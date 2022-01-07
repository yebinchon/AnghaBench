
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int pdf_obj ;
typedef int pdf_document ;
struct TYPE_7__ {int obj; TYPE_1__* page; } ;
typedef TYPE_2__ pdf_annot ;
typedef int fz_context ;
typedef enum pdf_line_ending { ____Placeholder_pdf_line_ending } pdf_line_ending ;
struct TYPE_6__ {int * doc; } ;


 int LE ;
 int PDF_NAME (int ) ;
 int check_allowed_subtypes (int *,TYPE_2__*,int ,int ) ;
 int line_ending_subtypes ;
 int pdf_array_put_drop (int *,int *,int,int ) ;
 int pdf_dict_put_drop (int *,int ,int ,int *) ;
 int pdf_dirty_annot (int *,TYPE_2__*) ;
 int pdf_name_from_line_ending (int *,int) ;
 int * pdf_new_array (int *,int *,int) ;

void
pdf_set_annot_line_ending_styles(fz_context *ctx, pdf_annot *annot,
  enum pdf_line_ending start_style,
  enum pdf_line_ending end_style)
{
 pdf_document *doc = annot->page->doc;
 pdf_obj *style;
 check_allowed_subtypes(ctx, annot, PDF_NAME(LE), line_ending_subtypes);
 style = pdf_new_array(ctx, doc, 2);
 pdf_dict_put_drop(ctx, annot->obj, PDF_NAME(LE), style);
 pdf_array_put_drop(ctx, style, 0, pdf_name_from_line_ending(ctx, start_style));
 pdf_array_put_drop(ctx, style, 1, pdf_name_from_line_ending(ctx, end_style));
 pdf_dirty_annot(ctx, annot);
}
