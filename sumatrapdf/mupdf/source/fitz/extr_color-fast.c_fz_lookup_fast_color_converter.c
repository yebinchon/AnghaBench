
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int fz_context ;
struct TYPE_4__ {int type; } ;
typedef TYPE_1__ fz_colorspace ;
typedef int fz_color_convert_fn ;


 int FZ_COLORSPACE_BGR ;
 int FZ_COLORSPACE_CMYK ;
 int FZ_COLORSPACE_GRAY ;
 int FZ_COLORSPACE_LAB ;
 int FZ_COLORSPACE_RGB ;
 int FZ_ERROR_GENERIC ;
 int * bgr_to_cmyk ;
 int * bgr_to_gray ;
 int * cmyk_to_bgr ;
 int * cmyk_to_cmyk ;
 int * cmyk_to_gray ;
 int * cmyk_to_rgb ;
 int fz_throw (int *,int ,char*) ;
 int * gray_to_cmyk ;
 int * gray_to_gray ;
 int * gray_to_rgb ;
 int * lab_to_bgr ;
 int * lab_to_cmyk ;
 int * lab_to_gray ;
 int * lab_to_rgb ;
 int * rgb_to_bgr ;
 int * rgb_to_cmyk ;
 int * rgb_to_gray ;
 int * rgb_to_rgb ;

fz_color_convert_fn *
fz_lookup_fast_color_converter(fz_context *ctx, fz_colorspace *ss, fz_colorspace *ds)
{
 int stype = ss->type;
 int dtype = ds->type;

 if (stype == FZ_COLORSPACE_GRAY)
 {
  if (dtype == FZ_COLORSPACE_GRAY) return gray_to_gray;
  if (dtype == FZ_COLORSPACE_RGB) return gray_to_rgb;
  if (dtype == FZ_COLORSPACE_BGR) return gray_to_rgb;
  if (dtype == FZ_COLORSPACE_CMYK) return gray_to_cmyk;
 }

 else if (stype == FZ_COLORSPACE_RGB)
 {
  if (dtype == FZ_COLORSPACE_GRAY) return rgb_to_gray;
  if (dtype == FZ_COLORSPACE_RGB) return rgb_to_rgb;
  if (dtype == FZ_COLORSPACE_BGR) return rgb_to_bgr;
  if (dtype == FZ_COLORSPACE_CMYK) return rgb_to_cmyk;
 }

 else if (stype == FZ_COLORSPACE_BGR)
 {
  if (dtype == FZ_COLORSPACE_GRAY) return bgr_to_gray;
  if (dtype == FZ_COLORSPACE_RGB) return rgb_to_bgr;
  if (dtype == FZ_COLORSPACE_BGR) return rgb_to_rgb;
  if (dtype == FZ_COLORSPACE_CMYK) return bgr_to_cmyk;
 }

 else if (stype == FZ_COLORSPACE_CMYK)
 {
  if (dtype == FZ_COLORSPACE_GRAY) return cmyk_to_gray;
  if (dtype == FZ_COLORSPACE_RGB) return cmyk_to_rgb;
  if (dtype == FZ_COLORSPACE_BGR) return cmyk_to_bgr;
  if (dtype == FZ_COLORSPACE_CMYK) return cmyk_to_cmyk;
 }

 else if (stype == FZ_COLORSPACE_LAB)
 {
  if (dtype == FZ_COLORSPACE_GRAY) return lab_to_gray;
  if (dtype == FZ_COLORSPACE_RGB) return lab_to_rgb;
  if (dtype == FZ_COLORSPACE_BGR) return lab_to_bgr;
  if (dtype == FZ_COLORSPACE_CMYK) return lab_to_cmyk;
 }

 fz_throw(ctx, FZ_ERROR_GENERIC, "cannot find color converter");
}
