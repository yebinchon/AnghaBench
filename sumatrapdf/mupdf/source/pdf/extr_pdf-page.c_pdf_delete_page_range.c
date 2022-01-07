
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_document ;
typedef int fz_context ;


 int pdf_count_pages (int *,int *) ;
 int pdf_delete_page (int *,int *,int) ;

void
pdf_delete_page_range(fz_context *ctx, pdf_document *doc, int start, int end)
{
 int count = pdf_count_pages(ctx, doc);

 if (end < 0 || end > count)
  end = count+1;
 if (start < 0)
  start = 0;
 while (start < end)
 {
  pdf_delete_page(ctx, doc, start);
  end--;
 }
}
