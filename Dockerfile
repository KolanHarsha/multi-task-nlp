# Use Jupyter's official base image with Python
FROM jupyter/base-notebook:python-3.9

# Set working directory
WORKDIR /home/jovyan/work

# Copy requirements and notebook into the container
COPY requirements.txt ./
COPY ml-assessment.ipynb ./

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port for Jupyter
EXPOSE 8888

# Start the notebook server (disable token for dev use)
CMD ["start-notebook.sh", "--NotebookApp.token=''", "--NotebookApp.password=''"]