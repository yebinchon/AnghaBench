
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_annot ;
typedef int fz_context ;


 int L ;
 int PDF_NAME (int ) ;
 int is_allowed_subtype (int *,int *,int ,int ) ;
 int line_subtypes ;

int
pdf_annot_has_line(fz_context *ctx, pdf_annot *annot)
{
 return is_allowed_subtype(ctx, annot, PDF_NAME(L), line_subtypes);
}
