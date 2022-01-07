
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int pdf_obj ;
struct TYPE_4__ {int obj; } ;
typedef TYPE_1__ pdf_annot ;
typedef int fz_context ;


 int InkList ;
 int PDF_NAME (int ) ;
 int pdf_array_push_array (int *,int *,int) ;
 int * pdf_dict_get (int *,int ,int ) ;
 int * pdf_dict_put_array (int *,int ,int ,int) ;
 int pdf_dirty_annot (int *,TYPE_1__*) ;
 int pdf_is_array (int *,int *) ;

void pdf_add_annot_ink_list_stroke(fz_context *ctx, pdf_annot *annot)
{
 pdf_obj *ink_list;

 ink_list = pdf_dict_get(ctx, annot->obj, PDF_NAME(InkList));
 if (!pdf_is_array(ctx, ink_list))
  ink_list = pdf_dict_put_array(ctx, annot->obj, PDF_NAME(InkList), 10);

 pdf_array_push_array(ctx, ink_list, 16);

 pdf_dirty_annot(ctx, annot);
}
