
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int pdf_document ;
typedef int fz_context ;


 int Encoding ;
 int PDF_NAME (int ) ;



 int WinAnsiEncoding ;
 int fz_glyph_name_from_iso8859_7 ;
 int fz_glyph_name_from_koi8u ;
 int pdf_add_simple_font_encoding_imp (int *,int *,int *,int ) ;
 int pdf_dict_put (int *,int *,int ,int ) ;

__attribute__((used)) static void
pdf_add_simple_font_encoding(fz_context *ctx, pdf_document *doc, pdf_obj *fobj, int encoding)
{
 switch (encoding)
 {
 default:
 case 128:
  pdf_dict_put(ctx, fobj, PDF_NAME(Encoding), PDF_NAME(WinAnsiEncoding));
  break;
 case 129:
  pdf_add_simple_font_encoding_imp(ctx, doc, fobj, fz_glyph_name_from_iso8859_7);
  break;
 case 130:
  pdf_add_simple_font_encoding_imp(ctx, doc, fobj, fz_glyph_name_from_koi8u);
  break;
 }
}
