
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pdf_widget ;
typedef int pdf_document ;
struct TYPE_2__ {int obj; } ;
typedef TYPE_1__ pdf_annot ;
typedef int fz_context ;


 int F ;
 int PDF_ANNOT_IS_LOCKED ;
 int PDF_NAME (int ) ;
 int V ;
 int pdf_dict_del (int *,int ,int ) ;
 int pdf_dict_get_int (int *,int ,int ) ;
 int pdf_dict_put_int (int *,int ,int ,int) ;
 int pdf_update_signature_appearance (int *,int *,int *,int *,int *) ;

void pdf_clear_signature(fz_context *ctx, pdf_document *doc, pdf_widget *widget)
{
 int flags;

 flags = pdf_dict_get_int(ctx, ((pdf_annot *) widget)->obj, PDF_NAME(F));
 flags &= ~PDF_ANNOT_IS_LOCKED;
 if (flags)
  pdf_dict_put_int(ctx, ((pdf_annot *) widget)->obj, PDF_NAME(F), flags);
 else
  pdf_dict_del(ctx, ((pdf_annot *) widget)->obj, PDF_NAME(F));

 pdf_dict_del(ctx, ((pdf_annot *) widget)->obj, PDF_NAME(V));

 pdf_update_signature_appearance(ctx, widget, ((void*)0), ((void*)0), ((void*)0));
}
