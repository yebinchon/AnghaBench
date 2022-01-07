
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 int RESOLVE (int *) ;
 int pdf_objcmp (int *,int *,int *) ;

int pdf_objcmp_resolve(fz_context *ctx, pdf_obj *a, pdf_obj *b)
{
 RESOLVE(a);
 RESOLVE(b);
 return pdf_objcmp(ctx, a, b);
}
