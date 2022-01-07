
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
typedef int fz_matrix ;
typedef int fz_device ;
typedef int fz_context ;


 int pdf_dev_begin_text (int *,int *,int ) ;
 int pdf_dev_ctm (int *,int *,int ) ;
 int pdf_dev_font (int *,int *,int ,int ) ;
 int pdf_dev_text_span (int *,int *,TYPE_1__*) ;

__attribute__((used)) static void
pdf_dev_ignore_text(fz_context *ctx, fz_device *dev, const fz_text *text, fz_matrix ctm)
{
 pdf_device *pdev = (pdf_device*)dev;
 fz_text_span *span;

 pdf_dev_ctm(ctx, pdev, ctm);

 for (span = text->head; span; span = span->next)
 {
  pdf_dev_begin_text(ctx, pdev, 0);
  pdf_dev_font(ctx, pdev, span->font, span->trm);
  pdf_dev_text_span(ctx, pdev, span);
 }
}
