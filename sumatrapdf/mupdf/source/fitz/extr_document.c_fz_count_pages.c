
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_document ;
typedef int fz_context ;


 scalar_t__ fz_count_chapter_pages (int *,int *,int) ;
 int fz_count_chapters (int *,int *) ;

int
fz_count_pages(fz_context *ctx, fz_document *doc)
{
 int i, c, n = 0;
 c = fz_count_chapters(ctx, doc);
 for (i = 0; i < c; ++i)
  n += fz_count_chapter_pages(ctx, doc, i);
 return n;
}
