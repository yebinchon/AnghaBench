
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* gstate; int dev; scalar_t__ gtop; } ;
typedef TYPE_2__ pdf_run_processor ;
typedef int pdf_processor ;
typedef int fz_context ;
struct TYPE_4__ {scalar_t__ clip_depth; } ;


 int fz_pop_clip (int *,int ) ;
 int pdf_grestore (int *,TYPE_2__*) ;

__attribute__((used)) static void
pdf_close_run_processor(fz_context *ctx, pdf_processor *proc)
{
 pdf_run_processor *pr = (pdf_run_processor *)proc;

 while (pr->gtop)
  pdf_grestore(ctx, pr);

 while (pr->gstate[0].clip_depth)
 {
  fz_pop_clip(ctx, pr->dev);
  pr->gstate[0].clip_depth--;
 }
}
