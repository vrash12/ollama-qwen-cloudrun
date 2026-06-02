FROM ollama/ollama:latest

ENV OLLAMA_HOST=0.0.0.0:8080
ENV OLLAMA_ORIGINS=*
ENV CUDA_VISIBLE_DEVICES=-1
ENV NVIDIA_VISIBLE_DEVICES=none
ENV OLLAMA_NO_GPU=1

RUN ollama serve & \
    sleep 10 && \
    ollama pull gemma3:4b && \
    pkill ollama

EXPOSE 8080

ENTRYPOINT ["/bin/ollama"]
CMD ["serve"]
