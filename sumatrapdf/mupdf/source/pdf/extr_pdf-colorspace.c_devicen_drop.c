
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;


 int pdf_drop_function (int *,void*) ;

__attribute__((used)) static void
devicen_drop(fz_context *ctx, void *tint)
{
 pdf_drop_function(ctx, tint);
}
