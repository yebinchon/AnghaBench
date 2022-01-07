
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
struct TYPE_5__ {int flags; } ;


 int FZ_DEVFLAG_STROKECOLOR_UNDEFINED ;
 int PDF_STROKE ;
 int fz_device_rgb (int *) ;
 int pdf_set_color (int *,TYPE_2__*,int ,float*) ;
 int pdf_set_colorspace (int *,TYPE_2__*,int ,int ) ;

__attribute__((used)) static void pdf_run_RG(fz_context *ctx, pdf_processor *proc, float r, float g, float b)
{
 pdf_run_processor *pr = (pdf_run_processor *)proc;
 float color[3] = {r, g, b};
 pr->dev->flags &= ~FZ_DEVFLAG_STROKECOLOR_UNDEFINED;
 pdf_set_colorspace(ctx, pr, PDF_STROKE, fz_device_rgb(ctx));
 pdf_set_color(ctx, pr, PDF_STROKE, color);
}
