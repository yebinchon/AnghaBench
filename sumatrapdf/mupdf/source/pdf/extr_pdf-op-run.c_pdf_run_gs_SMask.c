
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pdf_run_processor ;
typedef int pdf_processor ;
typedef int pdf_obj ;
struct TYPE_3__ {float* softmask_bc; int luminosity; int * softmask_resources; int * softmask; int ctm; int softmask_ctm; } ;
typedef TYPE_1__ pdf_gstate ;
typedef int fz_context ;
typedef int fz_colorspace ;


 int fz_colorspace_n (int *,int *) ;
 int fz_drop_colorspace (int *,int *) ;
 int pdf_drop_obj (int *,int *) ;
 TYPE_1__* pdf_flush_text (int *,int *) ;
 void* pdf_keep_obj (int *,int *) ;
 int * pdf_xobject_colorspace (int *,int *) ;

__attribute__((used)) static void pdf_run_gs_SMask(fz_context *ctx, pdf_processor *proc, pdf_obj *smask, pdf_obj *page_resources, float *bc, int luminosity)
{
 pdf_run_processor *pr = (pdf_run_processor *)proc;
 pdf_gstate *gstate = pdf_flush_text(ctx, pr);
 int i;

 if (gstate->softmask)
 {
  pdf_drop_obj(ctx, gstate->softmask);
  gstate->softmask = ((void*)0);
  pdf_drop_obj(ctx, gstate->softmask_resources);
  gstate->softmask_resources = ((void*)0);
 }

 if (smask)
 {
  fz_colorspace *cs = pdf_xobject_colorspace(ctx, smask);
  int cs_n = 1;
  if (cs)
   cs_n = fz_colorspace_n(ctx, cs);
  gstate->softmask_ctm = gstate->ctm;
  gstate->softmask = pdf_keep_obj(ctx, smask);
  gstate->softmask_resources = pdf_keep_obj(ctx, page_resources);
  for (i = 0; i < cs_n; ++i)
   gstate->softmask_bc[i] = bc[i];
  gstate->luminosity = luminosity;
  fz_drop_colorspace(ctx, cs);
 }
}
