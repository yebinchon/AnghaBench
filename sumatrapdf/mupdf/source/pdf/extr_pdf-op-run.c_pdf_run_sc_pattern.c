
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* dev; } ;
typedef TYPE_2__ pdf_run_processor ;
typedef int pdf_processor ;
typedef int pdf_pattern ;
typedef int fz_context ;
struct TYPE_4__ {int flags; } ;


 int FZ_DEVFLAG_FILLCOLOR_UNDEFINED ;
 int PDF_FILL ;
 int pdf_set_pattern (int *,TYPE_2__*,int ,int *,float*) ;

__attribute__((used)) static void pdf_run_sc_pattern(fz_context *ctx, pdf_processor *proc, const char *name, pdf_pattern *pat, int n, float *color)
{
 pdf_run_processor *pr = (pdf_run_processor *)proc;
 pr->dev->flags &= ~FZ_DEVFLAG_FILLCOLOR_UNDEFINED;
 pdf_set_pattern(ctx, pr, PDF_FILL, pat, color);
}
