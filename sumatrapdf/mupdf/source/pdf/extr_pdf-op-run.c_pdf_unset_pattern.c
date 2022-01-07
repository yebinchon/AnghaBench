
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int gtop; TYPE_3__* gstate; } ;
typedef TYPE_1__ pdf_run_processor ;
struct TYPE_6__ {scalar_t__ kind; int * pattern; } ;
typedef TYPE_2__ pdf_material ;
struct TYPE_7__ {TYPE_2__ stroke; TYPE_2__ fill; } ;
typedef TYPE_3__ pdf_gstate ;
typedef int fz_context ;


 int PDF_FILL ;
 scalar_t__ PDF_MAT_COLOR ;
 scalar_t__ PDF_MAT_PATTERN ;
 int pdf_drop_pattern (int *,int *) ;

__attribute__((used)) static void
pdf_unset_pattern(fz_context *ctx, pdf_run_processor *pr, int what)
{
 pdf_gstate *gs = pr->gstate + pr->gtop;
 pdf_material *mat;
 mat = what == PDF_FILL ? &gs->fill : &gs->stroke;
 if (mat->kind == PDF_MAT_PATTERN)
 {
  pdf_drop_pattern(ctx, mat->pattern);
  mat->pattern = ((void*)0);
  mat->kind = PDF_MAT_COLOR;
 }
}
