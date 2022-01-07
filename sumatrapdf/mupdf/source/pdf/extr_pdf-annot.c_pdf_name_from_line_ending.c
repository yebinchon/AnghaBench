
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
 int * PDF_NAME (int ) ;
 int RClosedArrow ;
 int ROpenArrow ;
 int Slash ;
 int Square ;

pdf_obj *pdf_name_from_line_ending(fz_context *ctx, enum pdf_line_ending end)
{
 switch (end)
 {
 default:
 case 133: return PDF_NAME(None);
 case 128: return PDF_NAME(Square);
 case 136: return PDF_NAME(Circle);
 case 134: return PDF_NAME(Diamond);
 case 132: return PDF_NAME(OpenArrow);
 case 135: return PDF_NAME(ClosedArrow);
 case 137: return PDF_NAME(Butt);
 case 130: return PDF_NAME(ROpenArrow);
 case 131: return PDF_NAME(RClosedArrow);
 case 129: return PDF_NAME(Slash);
 }
}
