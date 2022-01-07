
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_widget ;
typedef int fz_context ;


 int pdf_drop_annot (int *,int *) ;

void
pdf_drop_widget(fz_context *ctx, pdf_widget *widget)
{
 pdf_drop_annot(ctx, widget);
}
