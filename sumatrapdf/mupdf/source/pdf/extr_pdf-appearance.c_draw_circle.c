
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;
typedef int fz_buffer ;


 float CIRCLE_MAGIC ;
 int fz_append_printf (int *,int *,char*,float,float,...) ;

__attribute__((used)) static void
draw_circle(fz_context *ctx, fz_buffer *buf, float rx, float ry, float cx, float cy)
{
 float mx = rx * CIRCLE_MAGIC;
 float my = ry * CIRCLE_MAGIC;
 fz_append_printf(ctx, buf, "%g %g m\n", cx, cy+ry);
 fz_append_printf(ctx, buf, "%g %g %g %g %g %g c\n", cx+mx, cy+ry, cx+rx, cy+my, cx+rx, cy);
 fz_append_printf(ctx, buf, "%g %g %g %g %g %g c\n", cx+rx, cy-my, cx+mx, cy-ry, cx, cy-ry);
 fz_append_printf(ctx, buf, "%g %g %g %g %g %g c\n", cx-mx, cy-ry, cx-rx, cy-my, cx-rx, cy);
 fz_append_printf(ctx, buf, "%g %g %g %g %g %g c\n", cx-rx, cy+my, cx-mx, cy+ry, cx, cy+ry);
}
