
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int gparent; } ;
typedef TYPE_1__ pdf_run_processor ;
struct TYPE_8__ {int gstate_num; int shade; int kind; } ;
typedef TYPE_2__ pdf_material ;
struct TYPE_9__ {TYPE_2__ stroke; TYPE_2__ fill; } ;
typedef TYPE_3__ pdf_gstate ;
typedef int fz_shade ;
typedef int fz_context ;


 int PDF_FILL ;
 int PDF_MAT_SHADE ;
 int fz_drop_shade (int *,int ) ;
 int fz_keep_shade (int *,int *) ;
 TYPE_3__* pdf_flush_text (int *,TYPE_1__*) ;

__attribute__((used)) static void
pdf_set_shade(fz_context *ctx, pdf_run_processor *pr, int what, fz_shade *shade)
{
 pdf_gstate *gs;
 pdf_material *mat;

 gs = pdf_flush_text(ctx, pr);

 mat = what == PDF_FILL ? &gs->fill : &gs->stroke;

 fz_drop_shade(ctx, mat->shade);

 mat->kind = PDF_MAT_SHADE;
 mat->shade = fz_keep_shade(ctx, shade);

 mat->gstate_num = pr->gparent;
}
