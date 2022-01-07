
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int gparent; } ;
typedef TYPE_1__ pdf_run_processor ;
typedef int pdf_pattern ;
struct TYPE_9__ {int gstate_num; int * pattern; int kind; } ;
typedef TYPE_2__ pdf_material ;
struct TYPE_10__ {TYPE_2__ stroke; TYPE_2__ fill; } ;
typedef TYPE_3__ pdf_gstate ;
typedef int fz_context ;


 int PDF_FILL ;
 int PDF_MAT_PATTERN ;
 int pdf_drop_pattern (int *,int *) ;
 TYPE_3__* pdf_flush_text (int *,TYPE_1__*) ;
 int * pdf_keep_pattern (int *,int *) ;
 int pdf_set_color (int *,TYPE_1__*,int,float*) ;

__attribute__((used)) static void
pdf_set_pattern(fz_context *ctx, pdf_run_processor *pr, int what, pdf_pattern *pat, float *v)
{
 pdf_gstate *gs;
 pdf_material *mat;

 gs = pdf_flush_text(ctx, pr);

 mat = what == PDF_FILL ? &gs->fill : &gs->stroke;

 pdf_drop_pattern(ctx, mat->pattern);
 mat->pattern = ((void*)0);

 mat->kind = PDF_MAT_PATTERN;
 if (pat)
  mat->pattern = pdf_keep_pattern(ctx, pat);

 if (v)
  pdf_set_color(ctx, pr, what, v);

 mat->gstate_num = pr->gparent;
}
