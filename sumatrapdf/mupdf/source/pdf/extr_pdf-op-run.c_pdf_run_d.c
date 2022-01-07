
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int pdf_run_processor ;
typedef int pdf_processor ;
typedef int pdf_obj ;
struct TYPE_5__ {TYPE_3__* stroke_state; } ;
typedef TYPE_1__ pdf_gstate ;
typedef int fz_context ;
struct TYPE_6__ {int dash_len; float dash_phase; int * dash_list; } ;


 TYPE_3__* fz_unshare_stroke_state_with_dash_len (int *,TYPE_3__*,int) ;
 int pdf_array_get_real (int *,int *,int) ;
 int pdf_array_len (int *,int *) ;
 TYPE_1__* pdf_flush_text (int *,int *) ;

__attribute__((used)) static void pdf_run_d(fz_context *ctx, pdf_processor *proc, pdf_obj *array, float phase)
{
 pdf_run_processor *pr = (pdf_run_processor *)proc;
 pdf_gstate *gstate = pdf_flush_text(ctx, pr);
 int len, i;

 len = pdf_array_len(ctx, array);
 gstate->stroke_state = fz_unshare_stroke_state_with_dash_len(ctx, gstate->stroke_state, len);
 gstate->stroke_state->dash_len = len;
 for (i = 0; i < len; i++)
  gstate->stroke_state->dash_list[i] = pdf_array_get_real(ctx, array, i);
 gstate->stroke_state->dash_phase = phase;
}
