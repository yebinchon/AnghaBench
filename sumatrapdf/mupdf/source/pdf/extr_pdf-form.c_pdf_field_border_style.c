
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 int BS ;
 int PDF_NAME (int ) ;
 int S ;
 int pdf_dict_getl (int *,int *,int ,int ,int *) ;
 char* pdf_to_name (int *,int ) ;

char *pdf_field_border_style(fz_context *ctx, pdf_obj *field)
{
 const char *bs = pdf_to_name(ctx, pdf_dict_getl(ctx, field, PDF_NAME(BS), PDF_NAME(S), ((void*)0)));
 switch (*bs)
 {
 case 'S': return "Solid";
 case 'D': return "Dashed";
 case 'B': return "Beveled";
 case 'I': return "Inset";
 case 'U': return "Underline";
 }
 return "Solid";
}
