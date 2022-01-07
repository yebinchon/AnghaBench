
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int (* convert ) (int *,TYPE_2__*,int,int *,int *,unsigned char*,int *) ;} ;
struct TYPE_8__ {TYPE_1__ fns; } ;
typedef TYPE_2__ fz_rasterizer ;
typedef int fz_pixmap ;
typedef int fz_overprint ;
typedef int fz_irect ;
typedef int fz_context ;


 int fz_bound_rasterizer (int *,TYPE_2__*) ;
 int fz_clip_rasterizer (int *,TYPE_2__*) ;
 int fz_intersect_irect (int ,int ) ;
 int fz_is_empty_irect (int ) ;
 int fz_pixmap_bbox_no_ctx (int *) ;
 int stub1 (int *,TYPE_2__*,int,int *,int *,unsigned char*,int *) ;

void fz_convert_rasterizer(fz_context *ctx, fz_rasterizer *r, int eofill, fz_pixmap *pix, unsigned char *colorbv, fz_overprint *eop)
{
 fz_irect clip = fz_bound_rasterizer(ctx, r);
 clip = fz_intersect_irect(clip, fz_pixmap_bbox_no_ctx(pix));
 clip = fz_intersect_irect(clip, fz_clip_rasterizer(ctx, r));
 if (!fz_is_empty_irect(clip))
  r->fns.convert(ctx, r, eofill, &clip, pix, colorbv, eop);
}
