FROM datalust/seq:latest
# Chấp nhận EULA
ENV ACCEPT_EULA=Y
# MẸO QUAN TRỌNG: Xóa bỏ Capabilities để Render cho phép thực thi
USER root
RUN cp /seqsvr/Seq /seqsvr/Seq-stripped && mv /seqsvr/Seq-stripped /seqsvr/Seq && chmod +x /seqsvr/Seq
# Cấu hình cổng 8080 (Cổng cao không cần quyền đặc biệt)
ENV SEQ_API_PORT=8080
EXPOSE 8080
# Cấu hình đường dẫn lưu trữ
ENV SEQ_STORAGE_PATH=/data
# Vô hiệu hóa mlock
ENV SEQ_PREVENT_MLOCK=1
