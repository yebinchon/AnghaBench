
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int gtop; TYPE_3__* gstate; } ;
typedef TYPE_2__ pdf_run_processor ;
typedef int pdf_processor ;
struct TYPE_4__ {float scale; } ;
struct TYPE_6__ {TYPE_1__ text; } ;
typedef TYPE_3__ pdf_gstate ;
typedef int fz_context ;



__attribute__((used)) static void pdf_run_Tz(fz_context *ctx, pdf_processor *proc, float scale)
{


 pdf_run_processor *pr = (pdf_run_processor *)proc;
 pdf_gstate *gstate = pr->gstate + pr->gtop;
 gstate->text.scale = scale / 100;
}
