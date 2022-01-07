
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int pdf_processor ;
typedef int pdf_filter_processor ;
struct TYPE_7__ {float a; float b; float c; float d; float e; float f; } ;
typedef TYPE_2__ fz_matrix ;
typedef int fz_context ;
struct TYPE_6__ {int ctm; } ;
struct TYPE_8__ {TYPE_1__ pending; } ;
typedef TYPE_3__ filter_gstate ;


 int fz_concat (TYPE_2__,int ) ;
 TYPE_3__* gstate_to_update (int *,int *) ;

__attribute__((used)) static void
pdf_filter_cm(fz_context *ctx, pdf_processor *proc, float a, float b, float c, float d, float e, float f)
{
 pdf_filter_processor *p = (pdf_filter_processor*)proc;
 filter_gstate *gstate = gstate_to_update(ctx, p);
 fz_matrix ctm;


 if (a == 1 && b == 0 && c == 0 && d == 1 && e == 0 && f == 0)
  return;

 ctm.a = a;
 ctm.b = b;
 ctm.c = c;
 ctm.d = d;
 ctm.e = e;
 ctm.f = f;

 gstate->pending.ctm = fz_concat(ctm, gstate->pending.ctm);
}
