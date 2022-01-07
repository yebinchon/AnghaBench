
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_location ;
typedef int fz_document ;
typedef int fz_context ;


 int fz_count_chapter_pages (int *,int *,int) ;
 int fz_count_chapters (int *,int *) ;
 int fz_make_location (int,int) ;

fz_location fz_location_from_page_number(fz_context *ctx, fz_document *doc, int number)
{
 int i, m = 0, n = fz_count_chapters(ctx, doc);
 int start = 0;
 if (number < 0)
  number = 0;
 for (i = 0; i < n; ++i)
 {
  m = fz_count_chapter_pages(ctx, doc, i);
  if (number < start + m)
   return fz_make_location(i, number - start);
  start += m;
 }
 return fz_make_location(i-1, m-1);
}
