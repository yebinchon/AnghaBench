
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_gstate ;
typedef int fz_context ;


 int pdf_drop_gstate (int *,int *) ;
 int pdf_keep_gstate (int *,int *) ;

__attribute__((used)) static void
pdf_copy_gstate(fz_context *ctx, pdf_gstate *dst, pdf_gstate *src)
{
 pdf_drop_gstate(ctx, dst);
 *dst = *src;
 pdf_keep_gstate(ctx, dst);
}
