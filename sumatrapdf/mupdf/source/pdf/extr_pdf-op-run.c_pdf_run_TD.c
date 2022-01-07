
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int gtop; int tos; TYPE_3__* gstate; } ;
typedef TYPE_2__ pdf_run_processor ;
typedef int pdf_processor ;
struct TYPE_4__ {float leading; } ;
struct TYPE_6__ {TYPE_1__ text; } ;
typedef TYPE_3__ pdf_gstate ;
typedef int fz_context ;


 int pdf_tos_translate (int *,float,float) ;

__attribute__((used)) static void pdf_run_TD(fz_context *ctx, pdf_processor *proc, float tx, float ty)
{
 pdf_run_processor *pr = (pdf_run_processor *)proc;
 pdf_gstate *gstate = pr->gstate + pr->gtop;
 gstate->text.leading = -ty;
 pdf_tos_translate(&pr->tos, tx, ty);
}
