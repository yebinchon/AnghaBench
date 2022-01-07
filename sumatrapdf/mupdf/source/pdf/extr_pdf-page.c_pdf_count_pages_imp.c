
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_document ;
typedef int fz_document ;
typedef int fz_context ;


 int pdf_count_pages (int *,int *) ;

int pdf_count_pages_imp(fz_context *ctx, fz_document *doc, int chapter)
{
 return pdf_count_pages(ctx, (pdf_document*)doc);
}
