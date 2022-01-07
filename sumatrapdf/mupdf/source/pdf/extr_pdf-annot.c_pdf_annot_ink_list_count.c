
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
 int check_allowed_subtypes (int *,TYPE_1__*,int ,int ) ;
 int ink_list_subtypes ;
 int pdf_array_len (int *,int *) ;
 int * pdf_dict_get (int *,int ,int ) ;

int
pdf_annot_ink_list_count(fz_context *ctx, pdf_annot *annot)
{
 pdf_obj *ink_list;
 check_allowed_subtypes(ctx, annot, PDF_NAME(InkList), ink_list_subtypes);
 ink_list = pdf_dict_get(ctx, annot->obj, PDF_NAME(InkList));
 return pdf_array_len(ctx, ink_list);
}
