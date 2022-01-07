
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static float Clamp(float v, float min, float max) {
  return (v < min) ? min : (v > max) ? max : v;
}
