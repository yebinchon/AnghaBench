
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int gtop; int dev; TYPE_3__* gstate; } ;
typedef TYPE_2__ pdf_run_processor ;
struct TYPE_12__ {scalar_t__ kind; size_t gstate_num; int color_params; int alpha; scalar_t__ shade; scalar_t__ pattern; int v; int colorspace; } ;
struct TYPE_14__ {TYPE_1__ fill; int ctm; } ;
typedef TYPE_3__ pdf_gstate ;
typedef int fz_rect ;
typedef int fz_matrix ;
struct TYPE_15__ {scalar_t__ colorspace; } ;
typedef TYPE_4__ fz_image ;
typedef int fz_context ;


 int PDF_FILL ;
 scalar_t__ PDF_MAT_COLOR ;
 scalar_t__ PDF_MAT_PATTERN ;
 scalar_t__ PDF_MAT_SHADE ;
 int fz_clip_image_mask (int *,int ,TYPE_4__*,int ,int ) ;
 int fz_fill_image (int *,int ,TYPE_4__*,int ,int ,int ) ;
 int fz_fill_image_mask (int *,int ,TYPE_4__*,int ,int ,int ,int ,int ) ;
 int fz_fill_shade (int *,int ,scalar_t__,int ,int ,int ) ;
 int fz_pop_clip (int *,int ) ;
 TYPE_3__* pdf_show_pattern (int *,TYPE_2__*,scalar_t__,size_t,int ,int ) ;

__attribute__((used)) static void
pdf_show_image_imp(fz_context *ctx, pdf_run_processor *pr, fz_image *image, fz_matrix image_ctm, fz_rect bbox)
{
 pdf_gstate *gstate = pr->gstate + pr->gtop;

 if (image->colorspace)
 {
  fz_fill_image(ctx, pr->dev, image, image_ctm, gstate->fill.alpha, gstate->fill.color_params);
 }
 else if (gstate->fill.kind == PDF_MAT_COLOR)
 {
  fz_fill_image_mask(ctx, pr->dev, image, image_ctm, gstate->fill.colorspace, gstate->fill.v, gstate->fill.alpha, gstate->fill.color_params);
 }
 else if (gstate->fill.kind == PDF_MAT_PATTERN && gstate->fill.pattern)
 {
  fz_clip_image_mask(ctx, pr->dev, image, image_ctm, bbox);
  gstate = pdf_show_pattern(ctx, pr, gstate->fill.pattern, gstate->fill.gstate_num, bbox, PDF_FILL);
  fz_pop_clip(ctx, pr->dev);
 }
 else if (gstate->fill.kind == PDF_MAT_SHADE && gstate->fill.shade)
 {
  fz_clip_image_mask(ctx, pr->dev, image, image_ctm, bbox);
  fz_fill_shade(ctx, pr->dev, gstate->fill.shade, pr->gstate[gstate->fill.gstate_num].ctm, gstate->fill.alpha, gstate->fill.color_params);
  fz_pop_clip(ctx, pr->dev);
 }
}
