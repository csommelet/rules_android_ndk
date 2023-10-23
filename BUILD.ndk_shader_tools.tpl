"""Declarations for shader tools."""

load("//:shader_tools.bzl", "glsl_toolchain")

toolchain_type(
    name = "toolchain_type",
)

glsl_toolchain(
    name = "glsl_toolchain",
    glslc = ":glslc",
)

toolchain(
    name = "shader_toolchain",
    toolchain = ":glsl_toolchain",
    toolchain_type = ":toolchain_type",
)
