
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_annot ;
typedef int fz_context ;


 int Name ;
 int PDF_NAME (int ) ;
 int icon_name_subtypes ;
 int is_allowed_subtype (int *,int *,int ,int ) ;

int
pdf_annot_has_icon_name(fz_context *ctx, pdf_annot *annot)
{
 return is_allowed_subtype(ctx, annot, PDF_NAME(Name), icon_name_subtypes);
}
