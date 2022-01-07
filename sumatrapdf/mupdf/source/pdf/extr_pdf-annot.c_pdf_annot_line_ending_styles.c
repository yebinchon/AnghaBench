
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int pdf_obj ;
struct TYPE_4__ {int obj; } ;
typedef TYPE_1__ pdf_annot ;
typedef int fz_context ;
typedef enum pdf_line_ending { ____Placeholder_pdf_line_ending } pdf_line_ending ;


 int LE ;
 int PDF_NAME (int ) ;
 int check_allowed_subtypes (int *,TYPE_1__*,int ,int ) ;
 int line_ending_subtypes ;
 int pdf_array_get (int *,int *,int) ;
 int * pdf_dict_get (int *,int ,int ) ;
 int pdf_line_ending_from_name (int *,int ) ;

void
pdf_annot_line_ending_styles(fz_context *ctx, pdf_annot *annot,
  enum pdf_line_ending *start_style,
  enum pdf_line_ending *end_style)
{
 pdf_obj *style;
 check_allowed_subtypes(ctx, annot, PDF_NAME(LE), line_ending_subtypes);
 style = pdf_dict_get(ctx, annot->obj, PDF_NAME(LE));
 *start_style = pdf_line_ending_from_name(ctx, pdf_array_get(ctx, style, 0));
 *end_style = pdf_line_ending_from_name(ctx, pdf_array_get(ctx, style, 1));
}
