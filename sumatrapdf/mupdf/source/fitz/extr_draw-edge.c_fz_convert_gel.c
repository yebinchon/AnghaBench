
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef void fz_solid_color_painter_t ;
typedef int fz_rasterizer ;
struct TYPE_5__ {int alpha; int n; } ;
typedef TYPE_1__ fz_pixmap ;
typedef int fz_overprint ;
typedef int fz_irect ;
typedef int fz_gel ;
typedef int fz_context ;


 int assert (void*) ;
 scalar_t__ fz_aa_bits ;
 void* fz_get_solid_color_painter (int ,unsigned char*,int ,int *) ;
 scalar_t__ fz_get_span_color_painter (int ,int ,unsigned char*,int *) ;
 scalar_t__ fz_get_span_painter (int ,int,int ,int,int *) ;
 int fz_scan_convert_aa (int *,int *,int,int const*,TYPE_1__*,unsigned char*,void*,int *) ;
 int fz_scan_convert_sharp (int *,int *,int,int const*,TYPE_1__*,unsigned char*,void*,int *) ;
 int sort_gel (int *,int *) ;

__attribute__((used)) static void
fz_convert_gel(fz_context *ctx, fz_rasterizer *rast, int eofill, const fz_irect *clip, fz_pixmap *dst, unsigned char *color, fz_overprint *eop)
{
 fz_gel *gel = (fz_gel *)rast;

 sort_gel(ctx, gel);

 if (fz_aa_bits > 0)
 {
  void *fn;
  if (color)
   fn = (void *)fz_get_span_color_painter(dst->n, dst->alpha, color, eop);
  else
   fn = (void *)fz_get_span_painter(dst->alpha, 1, 0, 255, eop);
  assert(fn);
  if (fn == ((void*)0))
   return;
  fz_scan_convert_aa(ctx, gel, eofill, clip, dst, color, fn, eop);
 }
 else
 {
  fz_solid_color_painter_t *fn = fz_get_solid_color_painter(dst->n, color, dst->alpha, eop);
  assert(fn);
  if (fn == ((void*)0))
   return;
  fz_scan_convert_sharp(ctx, gel, eofill, clip, dst, color, (fz_solid_color_painter_t *)fn, eop);
 }
}
