library(tidyverse)
library(ggimage)
library(grid)
library(jpeg)


run_distances <- tribble(
  ~movie,                   ~character,   ~approx_distance_km, ~estimation_basis,
  "Run Lola Run (1998)",     "Lola",       7.0,   "Midpoint of the film's implied filming-location distance (6.5–7.5 km), based on mapping the actual Berlin street locations used in the shoot.",
  "Apocalypto (2006)",       "Jaguar Paw", 231,   "The film's own implied distance, based on ~18 hours of pursuit at an estimated pace of ~13 km/h (8 mph).",
  "The Naked Prey (1965)",   "Man",        130,   "Midpoint of the film's implied 80–130 km range, covered over roughly 3–4 days of on-screen pursuit."
)

max_dist <- max(run_distances$approx_distance_km)


# Background image, stretched across the full plot panel via rasterGrob()
bg_img  <- readJPEG("assets/lola.jpeg")
bg_grob <- rasterGrob(bg_img, width = unit(1, "npc"), height = unit(1, "npc"))

plot_film_distances <- run_distances |> 
  ggplot(aes(x = approx_distance_km, 
             y = fct_reorder(character, approx_distance_km))) +
  
  geom_col(fill = "#89d9f0", width = 0.55, alpha = 0.9) +
  
  annotation_custom(
    bg_grob,
    xmin = 0, xmax = max_dist * 1.25, 
    ymin = 0.4, ymax = 3.6
  ) +
  geom_label(aes(label = paste0(approx_distance_km, " km")),
             hjust      = -0.1,
             colour     = "white",
             fontface   = "bold",
             size       = 4,
             fill       = "#264653",
             linewidth  = 0.3
  ) +
  scale_x_continuous(limits = c(0, max_dist * 1.15), expand = c(0, 0)) +
  scale_y_discrete(
    labels = function(x) {
      paste0(x, "\n", run_distances$movie[match(x, run_distances$character)])
    }
  ) +
  labs(
    title    = "How Far Did They Run?",
    subtitle = "Approximate distances implied by three cinematic runs",
    caption  = "Estimates based on filming locations, on-screen pacing, and historical comparison",
    x = NULL, y = NULL
  ) +
  theme_minimal(base_size = 14) +
  theme(
    plot.title          = element_text(size = 20, face = "bold", hjust = 0.5, color = "#264653"),
    plot.subtitle       = element_text(size = 12, hjust = 0.5, color = "#4a6572"),
    plot.caption        = element_text(size = 12, color = "#6b8a99"),
    axis.text.y         = element_text(face = "bold", size = 12, color = "#264653", lineheight = 1.1),
    axis.text.x         = element_blank(),
    axis.ticks          = element_blank(),
    panel.grid          = element_blank(),
    plot.background     = element_rect(fill = "#cbe8f5", color = "#264653", linewidth = 1.2),
    panel.background    = element_rect(fill = "#cbe8f5", color = NA),
    plot.margin         = margin(t = 25, r = 40, b = 20, l = 25)
  )

plot_film_distances



ggsave(
  filename = "plots/01-plot_film_distances.jpg",
  plot = plot_film_distances,
  width = 25,
  height = 15,
  dpi = 300
)



