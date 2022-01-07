
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {TYPE_6__* colorspace; } ;
typedef TYPE_1__ fz_pixmap ;
typedef int fz_context ;
typedef int buf ;
struct TYPE_11__ {scalar_t__ type; } ;


 scalar_t__ FZ_COLORSPACE_GRAY ;
 scalar_t__ FZ_COLORSPACE_RGB ;
 TYPE_1__* fz_convert_pixmap (int *,TYPE_1__*,TYPE_6__*,int *,int *,int ,int) ;
 int fz_default_color_params ;
 TYPE_6__* fz_device_rgb (int *) ;
 int fz_drop_pixmap (int *,TYPE_1__*) ;
 int fz_save_pixmap_as_pam (int *,TYPE_1__*,char*) ;
 int fz_save_pixmap_as_png (int *,TYPE_1__*,char*) ;
 int fz_snprintf (char*,int,char*,char*) ;
 int printf (char*,char*) ;

__attribute__((used)) static void writepixmap(fz_context *ctx, fz_pixmap *pix, char *file, int dorgb)
{
 char buf[1024];
 fz_pixmap *rgb = ((void*)0);

 if (!pix)
  return;

 if (dorgb && pix->colorspace && pix->colorspace != fz_device_rgb(ctx))
 {
  rgb = fz_convert_pixmap(ctx, pix, fz_device_rgb(ctx), ((void*)0), ((void*)0), fz_default_color_params , 1);
  pix = rgb;
 }

 if (!pix->colorspace || pix->colorspace->type == FZ_COLORSPACE_GRAY || pix->colorspace->type == FZ_COLORSPACE_RGB)
 {
  fz_snprintf(buf, sizeof(buf), "%s.png", file);
  printf("extracting image %s\n", buf);
  fz_save_pixmap_as_png(ctx, pix, buf);
 }
 else
 {
  fz_snprintf(buf, sizeof(buf), "%s.pam", file);
  printf("extracting image %s\n", buf);
  fz_save_pixmap_as_pam(ctx, pix, buf);
 }

 fz_drop_pixmap(ctx, rgb);
}
