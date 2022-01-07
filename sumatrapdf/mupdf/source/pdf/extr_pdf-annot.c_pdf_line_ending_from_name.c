
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;
typedef enum pdf_line_ending { ____Placeholder_pdf_line_ending } pdf_line_ending ;


 int Butt ;
 int Circle ;
 int ClosedArrow ;
 int Diamond ;
 int None ;
 int OpenArrow ;
 int PDF_ANNOT_LE_BUTT ;
 int PDF_ANNOT_LE_CIRCLE ;
 int PDF_ANNOT_LE_CLOSED_ARROW ;
 int PDF_ANNOT_LE_DIAMOND ;
 int PDF_ANNOT_LE_NONE ;
 int PDF_ANNOT_LE_OPEN_ARROW ;
 int PDF_ANNOT_LE_R_CLOSED_ARROW ;
 int PDF_ANNOT_LE_R_OPEN_ARROW ;
 int PDF_ANNOT_LE_SLASH ;
 int PDF_ANNOT_LE_SQUARE ;
 int PDF_NAME (int ) ;
 int RClosedArrow ;
 int ROpenArrow ;
 int Slash ;
 int Square ;
 scalar_t__ pdf_name_eq (int *,int *,int ) ;

enum pdf_line_ending pdf_line_ending_from_name(fz_context *ctx, pdf_obj *end)
{
 if (pdf_name_eq(ctx, end, PDF_NAME(None))) return PDF_ANNOT_LE_NONE;
 else if (pdf_name_eq(ctx, end, PDF_NAME(Square))) return PDF_ANNOT_LE_SQUARE;
 else if (pdf_name_eq(ctx, end, PDF_NAME(Circle))) return PDF_ANNOT_LE_CIRCLE;
 else if (pdf_name_eq(ctx, end, PDF_NAME(Diamond))) return PDF_ANNOT_LE_DIAMOND;
 else if (pdf_name_eq(ctx, end, PDF_NAME(OpenArrow))) return PDF_ANNOT_LE_OPEN_ARROW;
 else if (pdf_name_eq(ctx, end, PDF_NAME(ClosedArrow))) return PDF_ANNOT_LE_CLOSED_ARROW;
 else if (pdf_name_eq(ctx, end, PDF_NAME(Butt))) return PDF_ANNOT_LE_BUTT;
 else if (pdf_name_eq(ctx, end, PDF_NAME(ROpenArrow))) return PDF_ANNOT_LE_R_OPEN_ARROW;
 else if (pdf_name_eq(ctx, end, PDF_NAME(RClosedArrow))) return PDF_ANNOT_LE_R_CLOSED_ARROW;
 else if (pdf_name_eq(ctx, end, PDF_NAME(Slash))) return PDF_ANNOT_LE_SLASH;
 else return PDF_ANNOT_LE_NONE;
}
