
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_page ;
typedef int fz_document ;
typedef int fz_context ;


 int FZ_ERROR_GENERIC ;
 int fz_count_chapter_pages (int *,int *,int) ;
 int fz_count_chapters (int *,int *) ;
 int * fz_load_chapter_page (int *,int *,int,int) ;
 int fz_throw (int *,int ,char*,int) ;

fz_page *
fz_load_page(fz_context *ctx, fz_document *doc, int number)
{
 int i, n = fz_count_chapters(ctx, doc);
 int start = 0;
 for (i = 0; i < n; ++i)
 {
  int m = fz_count_chapter_pages(ctx, doc, i);
  if (number < start + m)
   return fz_load_chapter_page(ctx, doc, i, number - start);
  start += m;
 }
 fz_throw(ctx, FZ_ERROR_GENERIC, "Page not found: %d", number+1);
}
