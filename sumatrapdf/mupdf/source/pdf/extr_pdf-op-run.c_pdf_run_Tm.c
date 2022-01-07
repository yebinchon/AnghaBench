
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tos; } ;
typedef TYPE_1__ pdf_run_processor ;
typedef int pdf_processor ;
typedef int fz_context ;


 int pdf_tos_set_matrix (int *,float,float,float,float,float,float) ;

__attribute__((used)) static void pdf_run_Tm(fz_context *ctx, pdf_processor *proc, float a, float b, float c, float d, float e, float f)
{
 pdf_run_processor *pr = (pdf_run_processor *)proc;
 pdf_tos_set_matrix(&pr->tos, a, b, c, d, e, f);
}
