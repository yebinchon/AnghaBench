
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int pdf_run_processor ;
typedef int pdf_processor ;
struct TYPE_9__ {int opm; } ;
struct TYPE_10__ {TYPE_3__ color_params; } ;
struct TYPE_7__ {int opm; } ;
struct TYPE_8__ {TYPE_1__ color_params; } ;
struct TYPE_11__ {TYPE_4__ fill; TYPE_2__ stroke; } ;
typedef TYPE_5__ pdf_gstate ;
typedef int fz_context ;


 TYPE_5__* pdf_flush_text (int *,int *) ;

__attribute__((used)) static void pdf_run_gs_OPM(fz_context *ctx, pdf_processor *proc, int i)
{
 pdf_run_processor *pr = (pdf_run_processor *)proc;
 pdf_gstate *gstate = pdf_flush_text(ctx, pr);
 gstate->stroke.color_params.opm = i;
 gstate->fill.color_params.opm = i;
}
