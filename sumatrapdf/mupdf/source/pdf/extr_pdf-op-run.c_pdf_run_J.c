
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* dev; } ;
typedef TYPE_2__ pdf_run_processor ;
typedef int pdf_processor ;
struct TYPE_10__ {TYPE_6__* stroke_state; } ;
typedef TYPE_3__ pdf_gstate ;
typedef int fz_context ;
struct TYPE_11__ {int start_cap; int dash_cap; int end_cap; } ;
struct TYPE_8__ {int flags; } ;


 int FZ_DEVFLAG_DASHCAP_UNDEFINED ;
 int FZ_DEVFLAG_ENDCAP_UNDEFINED ;
 int FZ_DEVFLAG_STARTCAP_UNDEFINED ;
 TYPE_6__* fz_unshare_stroke_state (int *,TYPE_6__*) ;
 TYPE_3__* pdf_flush_text (int *,TYPE_2__*) ;

__attribute__((used)) static void pdf_run_J(fz_context *ctx, pdf_processor *proc, int linecap)
{
 pdf_run_processor *pr = (pdf_run_processor *)proc;
 pdf_gstate *gstate = pdf_flush_text(ctx, pr);

 pr->dev->flags &= ~(FZ_DEVFLAG_STARTCAP_UNDEFINED | FZ_DEVFLAG_DASHCAP_UNDEFINED | FZ_DEVFLAG_ENDCAP_UNDEFINED);
 gstate->stroke_state = fz_unshare_stroke_state(ctx, gstate->stroke_state);
 gstate->stroke_state->start_cap = linecap;
 gstate->stroke_state->dash_cap = linecap;
 gstate->stroke_state->end_cap = linecap;
}
