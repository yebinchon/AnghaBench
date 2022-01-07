
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int pdf_font_desc ;
typedef int pdf_document ;
typedef int fz_context ;


 int CIDFontType0 ;
 int CIDFontType2 ;
 int DescendantFonts ;
 int Encoding ;
 int FZ_ERROR_SYNTAX ;
 int PDF_NAME (int ) ;
 int Subtype ;
 int ToUnicode ;
 int fz_throw (int *,int ,char*) ;
 int * load_cid_font (int *,int *,int *,int *,int *) ;
 int * pdf_array_get (int *,int *,int ) ;
 int * pdf_dict_get (int *,int *,int ) ;
 scalar_t__ pdf_is_name (int *,int *) ;
 scalar_t__ pdf_name_eq (int *,int *,int ) ;

__attribute__((used)) static pdf_font_desc *
pdf_load_type0_font(fz_context *ctx, pdf_document *doc, pdf_obj *dict)
{
 pdf_obj *dfonts;
 pdf_obj *dfont;
 pdf_obj *subtype;
 pdf_obj *encoding;
 pdf_obj *to_unicode;

 dfonts = pdf_dict_get(ctx, dict, PDF_NAME(DescendantFonts));
 if (!dfonts)
  fz_throw(ctx, FZ_ERROR_SYNTAX, "cid font is missing descendant fonts");

 dfont = pdf_array_get(ctx, dfonts, 0);

 subtype = pdf_dict_get(ctx, dfont, PDF_NAME(Subtype));
 encoding = pdf_dict_get(ctx, dict, PDF_NAME(Encoding));
 to_unicode = pdf_dict_get(ctx, dict, PDF_NAME(ToUnicode));

 if (pdf_is_name(ctx, subtype) && pdf_name_eq(ctx, subtype, PDF_NAME(CIDFontType0)))
  return load_cid_font(ctx, doc, dfont, encoding, to_unicode);
 if (pdf_is_name(ctx, subtype) && pdf_name_eq(ctx, subtype, PDF_NAME(CIDFontType2)))
  return load_cid_font(ctx, doc, dfont, encoding, to_unicode);
 fz_throw(ctx, FZ_ERROR_SYNTAX, "unknown cid font type");
}
