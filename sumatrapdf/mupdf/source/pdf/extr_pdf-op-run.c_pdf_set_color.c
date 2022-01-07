
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int gtop; int gparent; TYPE_3__* gstate; } ;
typedef TYPE_1__ pdf_run_processor ;
struct TYPE_8__ {int kind; int gstate_num; int v; int colorspace; } ;
typedef TYPE_2__ pdf_material ;
struct TYPE_9__ {TYPE_2__ stroke; TYPE_2__ fill; } ;
typedef TYPE_3__ pdf_gstate ;
typedef int fz_context ;


 int PDF_FILL ;


 int fz_clamp_color (int *,int ,float*,int ) ;
 int fz_warn (int *,char*) ;
 TYPE_3__* pdf_flush_text (int *,TYPE_1__*) ;

__attribute__((used)) static void
pdf_set_color(fz_context *ctx, pdf_run_processor *pr, int what, float *v)
{
 pdf_gstate *gstate = pr->gstate + pr->gtop;
 pdf_material *mat;

 gstate = pdf_flush_text(ctx, pr);

 mat = what == PDF_FILL ? &gstate->fill : &gstate->stroke;

 switch (mat->kind)
 {
 case 128:
 case 129:
  fz_clamp_color(ctx, mat->colorspace, v, mat->v);
  break;
 default:
  fz_warn(ctx, "color incompatible with material");
 }

 mat->gstate_num = pr->gparent;
}
