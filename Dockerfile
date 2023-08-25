FROM archlinux:latest

RUN pacman -Syu --needed --noconfirm \
	cmake \
	ninja \
	clang

WORKDIR /work

COPY . .

# COPY src src
# COPY include include

# COPY CMakeLists.txt CMakeLists.txt
RUN cmake -G Ninja -B build
RUN cmake --build build

# COPY meson.build meson.build
# RUN meson setup build
# RUN meson compile -C build

ENTRYPOINT [ "/work/build/helium" ]
