
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 int Ff ;
 int PDF_NAME (int ) ;
 int pdf_dict_get_inheritable (int *,int *,int ) ;
 int pdf_to_int (int *,int ) ;

int pdf_field_flags(fz_context *ctx, pdf_obj *obj)
{
 return pdf_to_int(ctx, pdf_dict_get_inheritable(ctx, obj, PDF_NAME(Ff)));
}
