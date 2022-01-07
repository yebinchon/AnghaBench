
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 int Metadata ;
 int PDF_NAME (int ) ;
 int Subtype ;
 int Type ;
 int XML ;
 int pdf_dict_get (int *,int *,int ) ;
 scalar_t__ pdf_name_eq (int *,int ,int ) ;

__attribute__((used)) static int is_xml_metadata(fz_context *ctx, pdf_obj *obj)
{
 if (pdf_name_eq(ctx, pdf_dict_get(ctx, obj, PDF_NAME(Type)), PDF_NAME(Metadata)))
  if (pdf_name_eq(ctx, pdf_dict_get(ctx, obj, PDF_NAME(Subtype)), PDF_NAME(XML)))
   return 1;
 return 0;
}
