
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int clip; int clip_even_odd; } ;
typedef TYPE_1__ pdf_run_processor ;
typedef int pdf_processor ;
typedef int fz_context ;



__attribute__((used)) static void pdf_run_Wstar(fz_context *ctx, pdf_processor *proc)
{
 pdf_run_processor *pr = (pdf_run_processor *)proc;
 pr->clip = 1;
 pr->clip_even_odd = 1;
}
