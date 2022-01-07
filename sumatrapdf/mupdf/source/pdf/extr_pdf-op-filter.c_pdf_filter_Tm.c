
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pdf_processor ;
struct TYPE_2__ {int Tm_pending; scalar_t__ Tm_adjust; int tos; } ;
typedef TYPE_1__ pdf_filter_processor ;
typedef int fz_context ;


 int pdf_tos_set_matrix (int *,float,float,float,float,float,float) ;

__attribute__((used)) static void
pdf_filter_Tm(fz_context *ctx, pdf_processor *proc, float a, float b, float c, float d, float e, float f)
{
 pdf_filter_processor *p = (pdf_filter_processor*)proc;
 pdf_tos_set_matrix(&p->tos, a, b, c, d, e, f);
 p->Tm_pending = 1;
 p->Tm_adjust = 0;
}
