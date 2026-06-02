FROM ollama/ollama:latest

ENV OLLAMA_HOST=0.0.0.0:8080

RUN ollama serve & \
    sleep 5 && \
    ollama pull qwen2.5:0.5b && \
    pkill ollama

EXPOSE 8080

CMD ["ollama", "serve"]
