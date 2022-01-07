
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int obj; } ;
typedef TYPE_1__ pdf_annot ;
typedef int fz_context ;


 int Contents ;
 int PDF_NAME (int ) ;
 char const* pdf_dict_get_text_string (int *,int ,int ) ;

const char *
pdf_annot_contents(fz_context *ctx, pdf_annot *annot)
{
 return pdf_dict_get_text_string(ctx, annot->obj, PDF_NAME(Contents));
}
