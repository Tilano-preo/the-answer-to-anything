FROM gcc:13

RUN apt-get update && apt-get install -y cmake

WORKDIR /app

COPY . .

# feste Build-Zeit
ENV SOURCE_DATE_EPOCH=1700000000

RUN cmake -B build \
 && cmake --build build

CMD ["sha256sum", "build/ask"]
