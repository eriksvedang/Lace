#version 330 core

layout (location = 0) in vec2 pos;

uniform float t;

out vec2 vPos;

void main() {
    vPos = pos;
    mat4 transform = mat4(vec4(1, 0, 0, 0),
                          vec4(0, 1, 0, 0),
                          vec4(0, 0, t, 0),
                          vec4(0, 0, 0, 1.2));
    gl_Position = transform * vec4(pos.x + sin(t + pos.x * pos.y * 6) * 0.1,
                                   pos.y + sin(t + pos.x * pos.y * 6) * 0.1,
                                   0.0,
                                   1.0);
}
