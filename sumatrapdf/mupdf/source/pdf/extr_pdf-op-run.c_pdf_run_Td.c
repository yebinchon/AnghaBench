
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tos; } ;
typedef TYPE_1__ pdf_run_processor ;
typedef int pdf_processor ;
typedef int fz_context ;


 int pdf_tos_translate (int *,float,float) ;

__attribute__((used)) static void pdf_run_Td(fz_context *ctx, pdf_processor *proc, float tx, float ty)
{
 pdf_run_processor *pr = (pdf_run_processor *)proc;
 pdf_tos_translate(&pr->tos, tx, ty);
}
