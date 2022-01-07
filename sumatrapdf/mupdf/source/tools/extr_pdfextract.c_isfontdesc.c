
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;


 int FontDescriptor ;
 int PDF_NAME (int ) ;
 int Type ;
 int ctx ;
 int * pdf_dict_get (int ,int *,int ) ;
 int pdf_name_eq (int ,int *,int ) ;

__attribute__((used)) static int isfontdesc(pdf_obj *obj)
{
 pdf_obj *type = pdf_dict_get(ctx, obj, PDF_NAME(Type));
 return pdf_name_eq(ctx, type, PDF_NAME(FontDescriptor));
}
