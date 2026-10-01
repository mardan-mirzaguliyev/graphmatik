# [Visage Quant](https://visagequant.substack.com/) 📊✍️

> *"True art is able to make us feel the artist's emotional state they were in while creating their masterpieces."*

Welcome to **Visage Quant** — a data science and AI engineering publication where methods get tested against real data before the results get trusted. What started as a deep dive into sentiment analysis has grown into a broader exploration of data analytics, applied wherever there's a genuine question worth answering with evidence rather than assumption.

## 🌟 About the Project

The first eleven episodes were dedicated entirely to sentiment analysis — comparing lexicons, local and hosted LLMs, and trained classifiers against classic literature, poetry, and song lyrics to see what these methods actually get right, and where confident-looking output quietly outruns accuracy. From Shakespeare to Shelley, Kipling to Karl Jenkins, each piece traced a real question about how machines read emotional and narrative meaning in text, all the way to a verified answer.

Graphmatik continues that same approach, now applied more broadly: whatever data analytics problem is worth digging into, whether or not it touches sentiment at all. The throughline isn't the topic — it's the method. Form a hypothesis, build the pipeline, check every result before trusting it, and follow the evidence even when it overturns what the last chart seemed to show.

While machines cannot fully replicate human literary or analytical comprehension, computational analysis serves as a powerful complementary lens — one that reveals patterns worth investigating, and just as often reveals exactly where its own confidence can't be trusted.

---

## 🛠️ Tech Stack & Architecture

This project bridges statistical rigor with modern AI workflows, using a hybrid local and cloud architecture:
* **Languages:** R (`tidyverse`, `tidytext`, `tidymodels`, `glmnet`) & Python (Core Python, LangChain, LangGraph).
* **AI & LLM Orchestration:** Claude API, OpenAI API, structured Pydantic outputs, and agentic confidence-routing workflows.
* **Data Management:** Secure local environment configuration (`.env` / `.Renviron`) and Google Sheets API integration.
* **Environment:** RStudio/Positron & VS Code on local hardware (optimized for memory efficiency).

---

## 📂 Repository Structure

The codebase is organized chronologically by episode, combining analytical notebooks, R scripts, and Python pipelines:
* Episodes 1–11: sentiment analysis across literature, poetry, and music, comparing lexicon-based, local LLM, hosted LLM, and trained-classifier approaches.
* Episode 12 onward: broader data analytics projects, methodology and scope varying by question.
* *More episodes coming soon...*

---

## 🔗 Links & Resources

* 📰 **Read all episodes on Substack:** [Visage Quant](https://visagequant.substack.com/)

---

## ⚙️ Getting Started & Local Setup

If you want to run or inspect the code locally:

1. **Clone the repository:**
```bash
   git clone https://github.com/mardan-mirzaguliyev/visagequant.git
```