FROM rust:1-slim-bullseye AS builder
WORKDIR /app
COPY . /app
RUN RUSTFLAGS= cargo test --release && cargo build --release

FROM scratch
COPY --from=builder /app/target/release/scratch-openfile /print-license
COPY --from=builder /app/LICENSE /LICENSE
CMD ["/print-license"]

