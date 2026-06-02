FROM ollama/ollama:latest

ENV PORT=8080
ENV OLLAMA_HOST=0.0.0.0:8080

EXPOSE 8080

CMD ["ollama", "serve"]
