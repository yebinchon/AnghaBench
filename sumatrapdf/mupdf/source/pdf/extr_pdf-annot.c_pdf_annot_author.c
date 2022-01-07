
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int obj; } ;
typedef TYPE_1__ pdf_annot ;
typedef int fz_context ;


 int PDF_NAME (int ) ;
 int T ;
 int check_allowed_subtypes (int *,TYPE_1__*,int ,int ) ;
 int markup_subtypes ;
 char const* pdf_dict_get_text_string (int *,int ,int ) ;

const char *
pdf_annot_author(fz_context *ctx, pdf_annot *annot)
{
 check_allowed_subtypes(ctx, annot, PDF_NAME(T), markup_subtypes);
 return pdf_dict_get_text_string(ctx, annot->obj, PDF_NAME(T));
}
