
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int fz_path ;
typedef int fz_matrix ;
typedef int fz_device ;
struct TYPE_3__ {scalar_t__ a; float r; float g; float b; } ;
typedef TYPE_1__ fz_css_color ;
typedef int fz_context ;


 int fz_closepath (int *,int *) ;
 int fz_default_color_params ;
 int fz_device_rgb (int *) ;
 int fz_drop_path (int *,int *) ;
 int fz_fill_path (int *,int *,int *,int ,int ,int ,float*,float,int ) ;
 int fz_lineto (int *,int *,float,float) ;
 int fz_moveto (int *,int *,float,float) ;
 int * fz_new_path (int *) ;

__attribute__((used)) static void draw_rect(fz_context *ctx, fz_device *dev, fz_matrix ctm, float page_top, fz_css_color color, float x0, float y0, float x1, float y1)
{
 if (color.a > 0)
 {
  float rgb[3];

  fz_path *path = fz_new_path(ctx);

  fz_moveto(ctx, path, x0, y0 - page_top);
  fz_lineto(ctx, path, x1, y0 - page_top);
  fz_lineto(ctx, path, x1, y1 - page_top);
  fz_lineto(ctx, path, x0, y1 - page_top);
  fz_closepath(ctx, path);

  rgb[0] = color.r / 255.0f;
  rgb[1] = color.g / 255.0f;
  rgb[2] = color.b / 255.0f;

  fz_fill_path(ctx, dev, path, 0, ctm, fz_device_rgb(ctx), rgb, color.a / 255.0f, fz_default_color_params);

  fz_drop_path(ctx, path);
 }
}
