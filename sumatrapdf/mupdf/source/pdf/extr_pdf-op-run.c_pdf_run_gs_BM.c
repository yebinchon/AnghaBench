
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pdf_run_processor ;
typedef int pdf_processor ;
struct TYPE_3__ {int blendmode; } ;
typedef TYPE_1__ pdf_gstate ;
typedef int fz_context ;


 int fz_lookup_blendmode (char const*) ;
 TYPE_1__* pdf_flush_text (int *,int *) ;

__attribute__((used)) static void pdf_run_gs_BM(fz_context *ctx, pdf_processor *proc, const char *blendmode)
{
 pdf_run_processor *pr = (pdf_run_processor *)proc;
 pdf_gstate *gstate = pdf_flush_text(ctx, pr);
 gstate->blendmode = fz_lookup_blendmode(blendmode);
}
