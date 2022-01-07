
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* dev; } ;
typedef TYPE_2__ pdf_run_processor ;
typedef int pdf_processor ;
typedef int fz_shade ;
typedef int fz_context ;
struct TYPE_4__ {int flags; } ;


 int FZ_DEVFLAG_STROKECOLOR_UNDEFINED ;
 int PDF_STROKE ;
 int pdf_set_shade (int *,TYPE_2__*,int ,int *) ;

__attribute__((used)) static void pdf_run_SC_shade(fz_context *ctx, pdf_processor *proc, const char *name, fz_shade *shade)
{
 pdf_run_processor *pr = (pdf_run_processor *)proc;
 pr->dev->flags &= ~FZ_DEVFLAG_STROKECOLOR_UNDEFINED;
 pdf_set_shade(ctx, pr, PDF_STROKE, shade);
}
