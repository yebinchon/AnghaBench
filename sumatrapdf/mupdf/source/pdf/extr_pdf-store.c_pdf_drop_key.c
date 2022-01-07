
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 int pdf_drop_obj (int *,int *) ;

__attribute__((used)) static void
pdf_drop_key(fz_context *ctx, void *key)
{
 pdf_drop_obj(ctx, (pdf_obj *)key);
}
