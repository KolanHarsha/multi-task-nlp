# 🧠 Multi-Task Sentence Transformer – NLP Assessment

This project is a complete solution to the **ML Apprentice Take-Home Exercise** focusing on **Sentence Transformers** and **Multi-Task Learning** using PyTorch and Hugging Face Transformers. It includes a Dockerized Jupyter Notebook (`ml-assessment.ipynb`) that covers implementation, training strategy, and architecture decisions.

---

## 📥 Clone and Run

To clone this repository and run the notebook using Docker:

```bash
git clone https://github.com/KolanHarsha/multi-task-nlp.git
cd multi-task-nlp
docker build -t multitask-nlp-notebook .
docker run -p 8888:8888 multitask-nlp-notebook
```

Then open [http://localhost:8888](http://localhost:8888) in your browser. Your notebook will be available inside the container under `/home/jovyan/work`.

---

## 📚 Project Overview

This notebook addresses all four tasks in the take-home assignment:

### 🔹 Task 1: Sentence Transformer Implementation
A sentence transformer model was implemented using a pretrained `BERT` backbone (`bert-base-uncased`) and a mean pooling strategy to generate fixed-length sentence embeddings. Design choices such as pooling method and token masking were explained and tested with example sentences.

### 🔹 Task 2: Multi-Task Learning Expansion
The model was extended to handle **multi-task learning**:
- **Task A**: Sentence Classification (e.g., positive/neutral/negative)
- **Task B**: Named Entity Recognition (NER)

A shared BERT encoder was used with separate task-specific heads. Architecture changes and the rationale for separating token-level and sentence-level tasks were clearly explained.

### 🔹 Task 3: Training Considerations
This section discusses the implications of:
1. Freezing the entire model
2. Freezing only the transformer backbone
3. Freezing one task-specific head

A practical transfer learning scenario (e.g., adapting to medical NER) was discussed, including which layers to freeze/unfreeze and why.

### 🔹 Task 4: Training Loop Implementation (BONUS)
A full multi-task training loop was coded:
- Hypothetical data was simulated
- Forward pass and backpropagation were handled
- Joint loss (for both tasks) was computed
- Basic metrics like sentence classification accuracy and token-level accuracy were tracked

Key decisions such as how to handle the losses and inputs in an MTL setup were clearly explained.

---

## 📦 Included Files
- `ml-assessment.ipynb` – Main notebook with all tasks
- `Dockerfile` – Docker environment for reproducibility
- `requirements.txt` – Python dependencies
- `README.md` – Project overview and setup instructions

---

## 🧠 Key Technologies
- Python 3.9
- PyTorch
- Hugging Face Transformers
- Jupyter Notebook
- Docker

---

## 🧑‍💻 Contributors
- Sai Harsha Vardhan Reddy, Kolan- skolan@horizon.csueastbay.edu

Thanks for reading!
