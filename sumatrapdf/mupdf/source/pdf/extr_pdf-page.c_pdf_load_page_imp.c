
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_document ;
typedef int fz_page ;
typedef int fz_document ;
typedef int fz_context ;


 scalar_t__ pdf_load_page (int *,int *,int) ;

fz_page *pdf_load_page_imp(fz_context *ctx, fz_document *doc, int chapter, int number)
{
 return (fz_page*)pdf_load_page(ctx, (pdf_document*)doc, number);
}
