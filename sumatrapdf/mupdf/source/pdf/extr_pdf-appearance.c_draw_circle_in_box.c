
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;
typedef int fz_buffer ;


 int draw_circle (int *,int *,float,float,float,float) ;

__attribute__((used)) static void
draw_circle_in_box(fz_context *ctx, fz_buffer *buf, float lw, float x0, float y0, float x1, float y1)
{
 float rx = (x1 - x0) / 2 - lw;
 float ry = (y1 - y0) / 2 - lw;
 float cx = x0 + lw + rx;
 float cy = y0 + lw + ry;
 draw_circle(ctx, buf, rx, ry, cx, cy);
}
