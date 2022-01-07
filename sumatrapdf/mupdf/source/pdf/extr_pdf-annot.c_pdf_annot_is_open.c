
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int obj; } ;
typedef TYPE_1__ pdf_annot ;
typedef int fz_context ;


 int Open ;
 int PDF_NAME (int ) ;
 int check_allowed_subtypes (int *,TYPE_1__*,int ,int ) ;
 int open_subtypes ;
 int pdf_dict_get_bool (int *,int ,int ) ;

int
pdf_annot_is_open(fz_context *ctx, pdf_annot *annot)
{
 check_allowed_subtypes(ctx, annot, PDF_NAME(Open), open_subtypes);
 return pdf_dict_get_bool(ctx, annot->obj, PDF_NAME(Open));
}
