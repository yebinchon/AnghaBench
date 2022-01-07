
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int page; scalar_t__ chapter; } ;
typedef TYPE_1__ fz_location ;
typedef int fz_document ;
typedef int fz_context ;


 int fz_count_chapter_pages (int *,int *,scalar_t__) ;
 TYPE_1__ fz_make_location (scalar_t__,int) ;

fz_location fz_previous_page(fz_context *ctx, fz_document *doc, fz_location loc)
{
 if (loc.page == 0)
 {
  if (loc.chapter > 0)
  {
   int np = fz_count_chapter_pages(ctx, doc, loc.chapter - 1);
   return fz_make_location(loc.chapter - 1, np - 1);
  }
 }
 else
 {
  return fz_make_location(loc.chapter, loc.page - 1);
 }
 return loc;
}
