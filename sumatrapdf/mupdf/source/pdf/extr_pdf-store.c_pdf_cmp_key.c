
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 int pdf_objcmp (int *,int *,int *) ;

__attribute__((used)) static int
pdf_cmp_key(fz_context *ctx, void *k0, void *k1)
{
 return pdf_objcmp(ctx, (pdf_obj *)k0, (pdf_obj *)k1);
}
