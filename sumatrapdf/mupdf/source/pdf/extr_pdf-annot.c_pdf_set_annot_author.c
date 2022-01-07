
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int obj; } ;
typedef TYPE_1__ pdf_annot ;
typedef int fz_context ;


 int PDF_NAME (int ) ;
 int T ;
 int check_allowed_subtypes (int *,TYPE_1__*,int ,int ) ;
 int markup_subtypes ;
 int pdf_dict_put_text_string (int *,int ,int ,char const*) ;
 int pdf_dirty_annot (int *,TYPE_1__*) ;

void
pdf_set_annot_author(fz_context *ctx, pdf_annot *annot, const char *author)
{
 check_allowed_subtypes(ctx, annot, PDF_NAME(T), markup_subtypes);
 pdf_dict_put_text_string(ctx, annot->obj, PDF_NAME(T), author);
 pdf_dirty_annot(ctx, annot);
}
