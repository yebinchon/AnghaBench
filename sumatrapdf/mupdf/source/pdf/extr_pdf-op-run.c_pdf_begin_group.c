
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int softmask_save ;
struct TYPE_7__ {int gtop; TYPE_2__* gstate; int dev; } ;
typedef TYPE_1__ pdf_run_processor ;
struct TYPE_8__ {scalar_t__ blendmode; } ;
typedef TYPE_2__ pdf_gstate ;
typedef int fz_rect ;
typedef int fz_context ;


 TYPE_2__* begin_softmask (int *,TYPE_1__*,int *) ;
 int fz_begin_group (int *,int ,int ,int *,int ,int ,scalar_t__,int) ;

__attribute__((used)) static pdf_gstate *
pdf_begin_group(fz_context *ctx, pdf_run_processor *pr, fz_rect bbox, softmask_save *softmask)
{
 pdf_gstate *gstate = begin_softmask(ctx, pr, softmask);

 if (gstate->blendmode)
  fz_begin_group(ctx, pr->dev, bbox, ((void*)0), 0, 0, gstate->blendmode, 1);

 return pr->gstate + pr->gtop;
}
