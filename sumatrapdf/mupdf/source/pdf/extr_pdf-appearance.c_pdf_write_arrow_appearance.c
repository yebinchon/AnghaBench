
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int fz_rect ;
struct TYPE_5__ {float x; float y; } ;
typedef TYPE_1__ fz_point ;
typedef int fz_context ;
typedef int fz_buffer ;


 float atan2f (float,float) ;
 int fz_append_printf (int *,int *,char*,float,float) ;
 int fz_expand_rect (int ,float) ;
 int fz_include_point_in_rect (int ,TYPE_1__) ;
 TYPE_1__ fz_make_point (float,float) ;
 float fz_max (int,float) ;
 TYPE_1__ rotate_vector (float,float,float) ;

__attribute__((used)) static void pdf_write_arrow_appearance(fz_context *ctx, fz_buffer *buf, fz_rect *rect, float x, float y, float dx, float dy, float w)
{
 float r = fz_max(1, w);
 float angle = atan2f(dy, dx);
 fz_point v, a, b;

 v = rotate_vector(angle, 8.8f*r, 4.5f*r);
 a = fz_make_point(x + v.x, y + v.y);
 v = rotate_vector(angle, 8.8f*r, -4.5f*r);
 b = fz_make_point(x + v.x, y + v.y);

 *rect = fz_include_point_in_rect(*rect, a);
 *rect = fz_include_point_in_rect(*rect, b);
 *rect = fz_expand_rect(*rect, w);

 fz_append_printf(ctx, buf, "%g %g m\n", a.x, a.y);
 fz_append_printf(ctx, buf, "%g %g l\n", x, y);
 fz_append_printf(ctx, buf, "%g %g l\n", b.x, b.y);
}
