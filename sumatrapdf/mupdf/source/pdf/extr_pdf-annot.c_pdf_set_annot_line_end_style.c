
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_annot ;
typedef int fz_context ;
typedef enum pdf_line_ending { ____Placeholder_pdf_line_ending } pdf_line_ending ;


 int pdf_annot_line_start_style (int *,int *) ;
 int pdf_set_annot_line_ending_styles (int *,int *,int,int) ;

void
pdf_set_annot_line_end_style(fz_context *ctx, pdf_annot *annot, enum pdf_line_ending e)
{
 enum pdf_line_ending s = pdf_annot_line_start_style(ctx, annot);
 pdf_set_annot_line_ending_styles(ctx, annot, s, e);
}
