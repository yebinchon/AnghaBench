
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * page_resources; int * softmask; int ctm; } ;
typedef TYPE_1__ softmask_save ;
struct TYPE_7__ {int gtop; int dev; TYPE_3__* gstate; } ;
typedef TYPE_2__ pdf_run_processor ;
struct TYPE_8__ {int softmask_ctm; int * softmask_resources; int * softmask; } ;
typedef TYPE_3__ pdf_gstate ;
typedef int fz_context ;


 int fz_pop_clip (int *,int ) ;

__attribute__((used)) static void
end_softmask(fz_context *ctx, pdf_run_processor *pr, softmask_save *save)
{
 pdf_gstate *gstate = pr->gstate + pr->gtop;

 if (save->softmask == ((void*)0))
  return;

 gstate->softmask = save->softmask;
 gstate->softmask_resources = save->page_resources;
 gstate->softmask_ctm = save->ctm;
 save->softmask = ((void*)0);
 save->page_resources = ((void*)0);

 fz_pop_clip(ctx, pr->dev);
}
