
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int pdf_processor ;
struct TYPE_8__ {int Tm_pending; TYPE_3__* gstate; int tos; scalar_t__ Tm_adjust; } ;
typedef TYPE_4__ pdf_filter_processor ;
typedef int fz_context ;
struct TYPE_5__ {float leading; } ;
struct TYPE_6__ {TYPE_1__ text; } ;
struct TYPE_7__ {TYPE_2__ pending; } ;


 int pdf_tos_translate (int *,float,float) ;

__attribute__((used)) static void
pdf_filter_TD(fz_context *ctx, pdf_processor *proc, float tx, float ty)
{
 pdf_filter_processor *p = (pdf_filter_processor*)proc;
 p->Tm_adjust = 0;
 pdf_tos_translate(&p->tos, tx, ty);
 p->gstate->pending.text.leading = -ty;
 p->Tm_pending = 1;
}
