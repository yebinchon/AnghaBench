
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pdf_processor ;
struct TYPE_2__ {int Tm_pending; int tos; scalar_t__ Tm_adjust; } ;
typedef TYPE_1__ pdf_filter_processor ;
typedef int fz_context ;


 int pdf_tos_translate (int *,float,float) ;

__attribute__((used)) static void
pdf_filter_Td(fz_context *ctx, pdf_processor *proc, float tx, float ty)
{
 pdf_filter_processor *p = (pdf_filter_processor*)proc;
 p->Tm_adjust = 0;
 pdf_tos_translate(&p->tos, tx, ty);
 p->Tm_pending = 1;
}
