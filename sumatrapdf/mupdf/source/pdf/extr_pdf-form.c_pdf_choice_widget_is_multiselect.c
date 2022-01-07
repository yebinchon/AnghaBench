
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pdf_widget ;
struct TYPE_2__ {int obj; } ;
typedef TYPE_1__ pdf_annot ;
typedef int fz_context ;


 int PDF_CH_FIELD_IS_MULTI_SELECT ;

 int pdf_field_flags (int *,int ) ;
 int pdf_field_type (int *,int ) ;

int pdf_choice_widget_is_multiselect(fz_context *ctx, pdf_widget *tw)
{
 pdf_annot *annot = (pdf_annot *)tw;

 if (!annot) return 0;

 switch (pdf_field_type(ctx, annot->obj))
 {
 case 128:
  return (pdf_field_flags(ctx, annot->obj) & PDF_CH_FIELD_IS_MULTI_SELECT) != 0;
 default:
  return 0;
 }
}
