
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_widget ;
typedef int fz_rect ;
typedef int fz_context ;


 int pdf_bound_annot (int *,int *) ;

fz_rect
pdf_bound_widget(fz_context *ctx, pdf_widget *widget)
{
 return pdf_bound_annot(ctx, widget);
}
