
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int chapter; int page; } ;
typedef TYPE_1__ fz_location ;
typedef int fz_document ;
typedef int fz_context ;


 scalar_t__ fz_count_chapter_pages (int *,int *,int) ;
 int fz_count_chapters (int *,int *) ;

int fz_page_number_from_location(fz_context *ctx, fz_document *doc, fz_location loc)
{
 int i, n, start = 0;
 n = fz_count_chapters(ctx, doc);
 for (i = 0; i < n; ++i)
 {
  if (i == loc.chapter)
   return start + loc.page;
  start += fz_count_chapter_pages(ctx, doc, i);
 }
 return -1;
}
