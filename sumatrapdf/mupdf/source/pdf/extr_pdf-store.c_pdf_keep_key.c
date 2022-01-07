
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 scalar_t__ pdf_keep_obj (int *,int *) ;

__attribute__((used)) static void *
pdf_keep_key(fz_context *ctx, void *key)
{
 return (void *)pdf_keep_obj(ctx, (pdf_obj *)key);
}
