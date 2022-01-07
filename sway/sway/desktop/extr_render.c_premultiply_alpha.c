
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void premultiply_alpha(float color[4], float opacity) {
 color[3] *= opacity;
 color[0] *= color[3];
 color[1] *= color[3];
 color[2] *= color[3];
}
