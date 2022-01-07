
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int stride; unsigned char* samples; int y; int n; int x; int w; int h; } ;
typedef TYPE_1__ fz_pixmap ;
struct TYPE_12__ {int x1; int x0; int y1; int y0; } ;
typedef TYPE_2__ fz_irect ;
typedef int fz_default_colorspaces ;
typedef int fz_context ;


 int fz_convert_pixmap_samples (int *,TYPE_1__*,TYPE_1__*,int *,int const*,int ,int ) ;
 int fz_default_color_params ;
 TYPE_2__ fz_intersect_irect (TYPE_2__,int ) ;
 int fz_pixmap_bbox (int *,TYPE_1__*) ;
 int memcpy (unsigned char*,unsigned char*,int) ;

void
fz_copy_pixmap_rect(fz_context *ctx, fz_pixmap *dest, fz_pixmap *src, fz_irect b, const fz_default_colorspaces *default_cs)
{
 unsigned char *srcp;
 unsigned char *destp;
 int y, w, destspan, srcspan;

 b = fz_intersect_irect(b, fz_pixmap_bbox(ctx, dest));
 b = fz_intersect_irect(b, fz_pixmap_bbox(ctx, src));
 w = b.x1 - b.x0;
 y = b.y1 - b.y0;
 if (w <= 0 || y <= 0)
  return;

 srcspan = src->stride;
 srcp = src->samples + (unsigned int)(srcspan * (b.y0 - src->y) + src->n * (b.x0 - src->x));
 destspan = dest->stride;
 destp = dest->samples + (unsigned int)(destspan * (b.y0 - dest->y) + dest->n * (b.x0 - dest->x));

 if (src->n == dest->n)
 {
  w *= src->n;
  do
  {
   memcpy(destp, srcp, w);
   srcp += srcspan;
   destp += destspan;
  }
  while (--y);
 }
 else
 {
  fz_pixmap fake_src = *src;
  fake_src.x = b.x0;
  fake_src.y = b.y0;
  fake_src.w = w;
  fake_src.h = y;
  fake_src.samples = srcp;
  fz_convert_pixmap_samples(ctx, dest, &fake_src, ((void*)0), default_cs, fz_default_color_params, 0);
 }
}
