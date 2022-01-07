
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int pdf_run_processor ;
typedef int pdf_processor ;
struct TYPE_4__ {int alpha; } ;
struct TYPE_5__ {TYPE_1__ fill; } ;
typedef TYPE_2__ pdf_gstate ;
typedef int fz_context ;


 int fz_clamp (float,int ,int) ;
 TYPE_2__* pdf_flush_text (int *,int *) ;

__attribute__((used)) static void pdf_run_gs_ca(fz_context *ctx, pdf_processor *proc, float alpha)
{
 pdf_run_processor *pr = (pdf_run_processor *)proc;
 pdf_gstate *gstate = pdf_flush_text(ctx, pr);
 gstate->fill.alpha = fz_clamp(alpha, 0, 1);
}
