
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int pdf_run_processor ;
typedef int pdf_processor ;
struct TYPE_5__ {int ctm; } ;
typedef TYPE_1__ pdf_gstate ;
struct TYPE_6__ {float a; float b; float c; float d; float e; float f; } ;
typedef TYPE_2__ fz_matrix ;
typedef int fz_context ;


 int fz_concat (TYPE_2__,int ) ;
 TYPE_1__* pdf_flush_text (int *,int *) ;

__attribute__((used)) static void pdf_run_cm(fz_context *ctx, pdf_processor *proc, float a, float b, float c, float d, float e, float f)
{
 pdf_run_processor *pr = (pdf_run_processor *)proc;
 pdf_gstate *gstate = pdf_flush_text(ctx, pr);
 fz_matrix m;

 m.a = a;
 m.b = b;
 m.c = c;
 m.d = d;
 m.e = e;
 m.f = f;
 gstate->ctm = fz_concat(m, gstate->ctm);
}
