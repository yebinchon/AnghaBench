
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_16__ {int * member_0; } ;
typedef TYPE_2__ softmask_save ;
struct TYPE_15__ {scalar_t__ hidden; } ;
struct TYPE_17__ {int gtop; int dev; TYPE_1__ super; TYPE_4__* gstate; } ;
typedef TYPE_3__ pdf_run_processor ;
struct TYPE_18__ {scalar_t__ blendmode; int ctm; } ;
typedef TYPE_4__ pdf_gstate ;
typedef int fz_rect ;
typedef int fz_matrix ;
struct TYPE_19__ {scalar_t__ mask; } ;
typedef TYPE_5__ fz_image ;
typedef int fz_context ;


 int fz_begin_group (int *,int ,int ,int *,int ,int ,scalar_t__,int) ;
 int fz_clip_image_mask (int *,int ,scalar_t__,int ,int ) ;
 int fz_end_group (int *,int ) ;
 int fz_pop_clip (int *,int ) ;
 int fz_pre_scale (int ,int,int) ;
 int fz_pre_translate (int ,int ,int) ;
 int fz_transform_rect (int ,int ) ;
 int fz_unit_rect ;
 TYPE_4__* pdf_begin_group (int *,TYPE_3__*,int ,TYPE_2__*) ;
 int pdf_end_group (int *,TYPE_3__*,TYPE_2__*) ;
 int pdf_show_image_imp (int *,TYPE_3__*,TYPE_5__*,int ,int ) ;

__attribute__((used)) static void
pdf_show_image(fz_context *ctx, pdf_run_processor *pr, fz_image *image)
{
 pdf_gstate *gstate = pr->gstate + pr->gtop;
 fz_matrix image_ctm;
 fz_rect bbox;

 if (pr->super.hidden)
  return;


 image_ctm = fz_pre_scale(fz_pre_translate(gstate->ctm, 0, 1), 1, -1);

 bbox = fz_transform_rect(fz_unit_rect, image_ctm);

 if (image->mask && gstate->blendmode)
 {

  fz_begin_group(ctx, pr->dev, bbox, ((void*)0), 0, 0, gstate->blendmode, 1);
  fz_clip_image_mask(ctx, pr->dev, image->mask, image_ctm, bbox);
  pdf_show_image_imp(ctx, pr, image, image_ctm, bbox);
  fz_pop_clip(ctx, pr->dev);
  fz_end_group(ctx, pr->dev);
 }
 else if (image->mask)
 {
  fz_clip_image_mask(ctx, pr->dev, image->mask, image_ctm, bbox);
  pdf_show_image_imp(ctx, pr, image, image_ctm, bbox);
  fz_pop_clip(ctx, pr->dev);
 }
 else
 {
  softmask_save softmask = { ((void*)0) };
  gstate = pdf_begin_group(ctx, pr, bbox, &softmask);
  pdf_show_image_imp(ctx, pr, image, image_ctm, bbox);
  pdf_end_group(ctx, pr, &softmask);
 }
}
