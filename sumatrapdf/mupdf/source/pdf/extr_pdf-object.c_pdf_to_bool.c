
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 int * PDF_TRUE ;
 int RESOLVE (int *) ;

int pdf_to_bool(fz_context *ctx, pdf_obj *obj)
{
 RESOLVE(obj);
 return obj == PDF_TRUE;
}
