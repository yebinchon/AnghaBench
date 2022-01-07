
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* dev; } ;
typedef TYPE_2__ pdf_run_processor ;
typedef int pdf_processor ;
typedef int fz_context ;
typedef int fz_colorspace ;
struct TYPE_5__ {int flags; } ;


 int FZ_DEVFLAG_FILLCOLOR_UNDEFINED ;
 int PDF_FILL ;
 int pdf_set_colorspace (int *,TYPE_2__*,int ,int *) ;
 int pdf_set_pattern (int *,TYPE_2__*,int ,int *,int *) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static void pdf_run_cs(fz_context *ctx, pdf_processor *proc, const char *name, fz_colorspace *colorspace)
{
 pdf_run_processor *pr = (pdf_run_processor *)proc;
 pr->dev->flags &= ~FZ_DEVFLAG_FILLCOLOR_UNDEFINED;
 if (!strcmp(name, "Pattern"))
  pdf_set_pattern(ctx, pr, PDF_FILL, ((void*)0), ((void*)0));
 else
  pdf_set_colorspace(ctx, pr, PDF_FILL, colorspace);
}
