
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 int CIDFontType0C ;
 int Font ;
 int FontDescriptor ;
 int Length1 ;
 int Length2 ;
 int Length3 ;
 int PDF_NAME (int ) ;
 int Subtype ;
 int Type ;
 int Type1C ;
 int * pdf_dict_get (int *,int *,int ) ;
 int pdf_name_eq (int *,int *,int ) ;

__attribute__((used)) static int is_font_stream(fz_context *ctx, pdf_obj *obj)
{
 pdf_obj *o;
 if (o = pdf_dict_get(ctx, obj, PDF_NAME(Type)), pdf_name_eq(ctx, o, PDF_NAME(Font)))
  return 1;
 if (o = pdf_dict_get(ctx, obj, PDF_NAME(Type)), pdf_name_eq(ctx, o, PDF_NAME(FontDescriptor)))
  return 1;
 if (pdf_dict_get(ctx, obj, PDF_NAME(Length1)) != ((void*)0))
  return 1;
 if (pdf_dict_get(ctx, obj, PDF_NAME(Length2)) != ((void*)0))
  return 1;
 if (pdf_dict_get(ctx, obj, PDF_NAME(Length3)) != ((void*)0))
  return 1;
 if (o = pdf_dict_get(ctx, obj, PDF_NAME(Subtype)), pdf_name_eq(ctx, o, PDF_NAME(Type1C)))
  return 1;
 if (o = pdf_dict_get(ctx, obj, PDF_NAME(Subtype)), pdf_name_eq(ctx, o, PDF_NAME(CIDFontType0C)))
  return 1;
 return 0;
}
