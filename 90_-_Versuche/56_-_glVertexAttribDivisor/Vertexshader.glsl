#version 330

layout (location = 0) in vec3 position;
layout (location = 1) in vec4 instance_color;
layout (location = 2) in vec4 instance_position;

out vec4 Color;

void main(void) {
  gl_Position = (vec4(position, 1.0) + instance_position);
  gl_Position.xyz /= 4;
  Color = instance_color;
}

