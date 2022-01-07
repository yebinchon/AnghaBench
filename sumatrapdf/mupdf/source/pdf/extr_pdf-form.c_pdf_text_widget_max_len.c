
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pdf_widget ;
struct TYPE_2__ {int obj; } ;
typedef TYPE_1__ pdf_annot ;
typedef int fz_context ;


 int MaxLen ;
 int PDF_NAME (int ) ;
 int pdf_dict_get_inheritable (int *,int ,int ) ;
 int pdf_to_int (int *,int ) ;

int pdf_text_widget_max_len(fz_context *ctx, pdf_widget *tw)
{
 pdf_annot *annot = (pdf_annot *)tw;
 return pdf_to_int(ctx, pdf_dict_get_inheritable(ctx, annot->obj, PDF_NAME(MaxLen)));
}
