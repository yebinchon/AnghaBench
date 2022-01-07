
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int n; int alpha; int * colorspace; scalar_t__ seps; } ;
typedef TYPE_1__ fz_pixmap ;
typedef int fz_overprint ;
struct TYPE_14__ {int default_cs; } ;
typedef TYPE_2__ fz_draw_device ;
typedef int fz_context ;
typedef int fz_colorspace ;
typedef int fz_color_params ;


 scalar_t__ FZ_COLORSPACE_CMYK ;
 TYPE_1__* fz_clone_pixmap_area_with_different_seps (int *,TYPE_1__*,int *,int *,scalar_t__,int ,int ) ;
 scalar_t__ fz_colorspace_is_device_n (int *,int *) ;
 scalar_t__ fz_colorspace_type (int *,int *) ;
 TYPE_1__* fz_convert_pixmap (int *,TYPE_1__*,int *,int *,int ,int ,int) ;
 int fz_drop_pixmap (int *,TYPE_1__*) ;
 int fz_set_overprint (int *,int) ;
 int * set_op_from_spaces (int *,int *,TYPE_1__*,int *,int ) ;

__attribute__((used)) static fz_pixmap *
convert_pixmap_for_painting(fz_context *ctx, fz_pixmap *pixmap, fz_colorspace *model, fz_colorspace *src_cs, fz_pixmap *dest, fz_color_params color_params, fz_draw_device *dev, fz_overprint **eop)
{
 fz_pixmap *converted;

 if (fz_colorspace_is_device_n(ctx, src_cs) && dest->seps)
 {
  converted = fz_clone_pixmap_area_with_different_seps(ctx, pixmap, ((void*)0), model, dest->seps, color_params, dev->default_cs);
  *eop = set_op_from_spaces(ctx, *eop, dest, src_cs, 0);
 }
 else
 {
  converted = fz_convert_pixmap(ctx, pixmap, model, ((void*)0), dev->default_cs, color_params, 1);
  if (*eop)
  {
   if (fz_colorspace_type(ctx, model) != FZ_COLORSPACE_CMYK)
   {

    *eop = ((void*)0);
   }
   else if (!fz_colorspace_is_device_n(ctx, pixmap->colorspace))
   {
    int i;
    int n = dest->n - dest->alpha;
    for (i = 4; i < n; i++)
     fz_set_overprint(*eop, i);
   }
   else
   {
    *eop = set_op_from_spaces(ctx, *eop, dest, src_cs, 0);
   }
  }
 }
 fz_drop_pixmap(ctx, pixmap);

 return converted;
}
