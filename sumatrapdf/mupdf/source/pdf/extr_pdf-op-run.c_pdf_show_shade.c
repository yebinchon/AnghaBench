
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {int * member_0; } ;
typedef TYPE_3__ softmask_save ;
struct TYPE_13__ {scalar_t__ hidden; } ;
struct TYPE_15__ {int gtop; int dev; TYPE_2__ super; TYPE_5__* gstate; } ;
typedef TYPE_4__ pdf_run_processor ;
struct TYPE_12__ {int color_params; int alpha; } ;
struct TYPE_16__ {TYPE_1__ fill; int ctm; } ;
typedef TYPE_5__ pdf_gstate ;
typedef int fz_shade ;
typedef int fz_rect ;
typedef int fz_context ;


 int fz_bound_shade (int *,int *,int ) ;
 int fz_fill_shade (int *,int ,int *,int ,int ,int ) ;
 TYPE_5__* pdf_begin_group (int *,TYPE_4__*,int ,TYPE_3__*) ;
 int pdf_end_group (int *,TYPE_4__*,TYPE_3__*) ;

__attribute__((used)) static void
pdf_show_shade(fz_context *ctx, pdf_run_processor *pr, fz_shade *shd)
{
 pdf_gstate *gstate = pr->gstate + pr->gtop;
 fz_rect bbox;
 softmask_save softmask = { ((void*)0) };

 if (pr->super.hidden)
  return;

 bbox = fz_bound_shade(ctx, shd, gstate->ctm);

 gstate = pdf_begin_group(ctx, pr, bbox, &softmask);



 fz_fill_shade(ctx, pr->dev, shd, gstate->ctm, gstate->fill.alpha, gstate->fill.color_params);

 pdf_end_group(ctx, pr, &softmask);
}
