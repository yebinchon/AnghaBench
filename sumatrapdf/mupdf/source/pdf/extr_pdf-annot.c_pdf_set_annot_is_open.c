
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int obj; } ;
typedef TYPE_1__ pdf_annot ;
typedef int fz_context ;


 int Open ;
 int PDF_NAME (int ) ;
 int check_allowed_subtypes (int *,TYPE_1__*,int ,int ) ;
 int open_subtypes ;
 int pdf_dict_put_bool (int *,int ,int ,int) ;
 int pdf_dirty_annot (int *,TYPE_1__*) ;

void
pdf_set_annot_is_open(fz_context *ctx, pdf_annot *annot, int is_open)
{
 check_allowed_subtypes(ctx, annot, PDF_NAME(Open), open_subtypes);
 pdf_dict_put_bool(ctx, annot->obj, PDF_NAME(Open), is_open);
 pdf_dirty_annot(ctx, annot);
}
