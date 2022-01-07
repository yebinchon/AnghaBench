
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;


 int Image ;
 int PDF_NAME (int ) ;
 int Subtype ;
 int ctx ;
 int * pdf_dict_get (int ,int *,int ) ;
 int pdf_name_eq (int ,int *,int ) ;

__attribute__((used)) static int isimage(pdf_obj *obj)
{
 pdf_obj *type = pdf_dict_get(ctx, obj, PDF_NAME(Subtype));
 return pdf_name_eq(ctx, type, PDF_NAME(Image));
}
