
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pdf_obj ;
struct TYPE_3__ {int obj; } ;
typedef TYPE_1__ pdf_annot ;
typedef int fz_context ;
typedef enum pdf_line_ending { ____Placeholder_pdf_line_ending } pdf_line_ending ;


 int LE ;
 int PDF_NAME (int ) ;
 int pdf_array_get (int *,int *,int) ;
 int * pdf_dict_get (int *,int ,int ) ;
 int pdf_line_ending_from_name (int *,int ) ;

enum pdf_line_ending
pdf_annot_line_end_style(fz_context *ctx, pdf_annot *annot)
{
 pdf_obj *le = pdf_dict_get(ctx, annot->obj, PDF_NAME(LE));
 return pdf_line_ending_from_name(ctx, pdf_array_get(ctx, le, 1));
}
