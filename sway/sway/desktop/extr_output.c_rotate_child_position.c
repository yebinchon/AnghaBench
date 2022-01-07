
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double cos (float) ;
 double sin (float) ;

__attribute__((used)) static void rotate_child_position(double *sx, double *sy, double sw, double sh,
  double pw, double ph, float rotation) {
 if (rotation == 0.0f) {
  return;
 }


 double ox = *sx - pw/2 + sw/2,
  oy = *sy - ph/2 + sh/2;

 double rx = cos(-rotation)*ox - sin(-rotation)*oy,
  ry = cos(-rotation)*oy + sin(-rotation)*ox;
 *sx = rx + pw/2 - sw/2;
 *sy = ry + ph/2 - sh/2;
}
