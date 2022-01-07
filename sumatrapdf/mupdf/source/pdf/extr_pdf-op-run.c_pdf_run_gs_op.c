
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int pdf_run_processor ;
typedef int pdf_processor ;
struct TYPE_5__ {int op; } ;
struct TYPE_6__ {TYPE_1__ color_params; } ;
struct TYPE_7__ {TYPE_2__ fill; } ;
typedef TYPE_3__ pdf_gstate ;
typedef int fz_context ;


 TYPE_3__* pdf_flush_text (int *,int *) ;

__attribute__((used)) static void pdf_run_gs_op(fz_context *ctx, pdf_processor *proc, int b)
{
 pdf_run_processor *pr = (pdf_run_processor *)proc;
 pdf_gstate *gstate = pdf_flush_text(ctx, pr);
 gstate->fill.color_params.op = b;
}
