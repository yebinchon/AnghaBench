
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int softmask_save ;
struct TYPE_5__ {int gtop; int dev; TYPE_2__* gstate; } ;
typedef TYPE_1__ pdf_run_processor ;
struct TYPE_6__ {scalar_t__ blendmode; } ;
typedef TYPE_2__ pdf_gstate ;
typedef int fz_context ;


 int end_softmask (int *,TYPE_1__*,int *) ;
 int fz_end_group (int *,int ) ;

__attribute__((used)) static void
pdf_end_group(fz_context *ctx, pdf_run_processor *pr, softmask_save *softmask)
{
 pdf_gstate *gstate = pr->gstate + pr->gtop;

 if (gstate->blendmode)
  fz_end_group(ctx, pr->dev);

 end_softmask(ctx, pr, softmask);
}
