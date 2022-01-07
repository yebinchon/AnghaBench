
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int chapter; int page; } ;
typedef TYPE_1__ fz_location ;
typedef int fz_document ;
typedef int fz_context ;


 int fz_count_chapter_pages (int *,int *,int) ;
 int fz_count_chapters (int *,int *) ;
 TYPE_1__ fz_make_location (int,int) ;

fz_location fz_next_page(fz_context *ctx, fz_document *doc, fz_location loc)
{
 int nc = fz_count_chapters(ctx, doc);
 int np = fz_count_chapter_pages(ctx, doc, loc.chapter);
 if (loc.page + 1 == np)
 {
  if (loc.chapter + 1 < nc)
  {
   return fz_make_location(loc.chapter + 1, 0);
  }
 }
 else
 {
  return fz_make_location(loc.chapter, loc.page + 1);
 }
 return loc;
}
