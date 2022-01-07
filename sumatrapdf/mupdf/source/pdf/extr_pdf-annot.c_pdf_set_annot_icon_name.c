
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int obj; } ;
typedef TYPE_1__ pdf_annot ;
typedef int fz_context ;


 int Name ;
 int PDF_NAME (int ) ;
 int check_allowed_subtypes (int *,TYPE_1__*,int ,int ) ;
 int icon_name_subtypes ;
 int pdf_dict_put_name (int *,int ,int ,char const*) ;
 int pdf_dirty_annot (int *,TYPE_1__*) ;

void
pdf_set_annot_icon_name(fz_context *ctx, pdf_annot *annot, const char *name)
{
 check_allowed_subtypes(ctx, annot, PDF_NAME(Name), icon_name_subtypes);
 pdf_dict_put_name(ctx, annot->obj, PDF_NAME(Name), name);
 pdf_dirty_annot(ctx, annot);
}
