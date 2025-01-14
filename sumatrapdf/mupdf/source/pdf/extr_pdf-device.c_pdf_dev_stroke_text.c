
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int pdf_device ;
struct TYPE_5__ {int trm; int font; struct TYPE_5__* next; } ;
typedef TYPE_1__ fz_text_span ;
struct TYPE_6__ {TYPE_1__* head; } ;
typedef TYPE_2__ fz_text ;
typedef int fz_stroke_state ;
typedef int fz_matrix ;
typedef int fz_device ;
typedef int fz_context ;
typedef int fz_colorspace ;
typedef int fz_color_params ;


 int pdf_dev_alpha (int *,int *,float,int) ;
 int pdf_dev_begin_text (int *,int *,int) ;
 int pdf_dev_color (int *,int *,int *,float const*,int,int ) ;
 int pdf_dev_ctm (int *,int *,int ) ;
 int pdf_dev_font (int *,int *,int ,int ) ;
 int pdf_dev_text_span (int *,int *,TYPE_1__*) ;

__attribute__((used)) static void
pdf_dev_stroke_text(fz_context *ctx, fz_device *dev, const fz_text *text, const fz_stroke_state *stroke, fz_matrix ctm,
  fz_colorspace *colorspace, const float *color, float alpha, fz_color_params color_params)
{
 pdf_device *pdev = (pdf_device*)dev;
 fz_text_span *span;

 pdf_dev_ctm(ctx, pdev, ctm);
 pdf_dev_alpha(ctx, pdev, alpha, 1);
 pdf_dev_color(ctx, pdev, colorspace, color, 1, color_params);

 for (span = text->head; span; span = span->next)
 {
  pdf_dev_begin_text(ctx, pdev, 1);
  pdf_dev_font(ctx, pdev, span->font, span->trm);
  pdf_dev_text_span(ctx, pdev, span);
 }
}
