
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int chapter; int page; } ;
typedef TYPE_1__ fz_location ;
typedef int fz_document ;
typedef int fz_context ;


 int fz_count_chapter_pages (int *,int *,int) ;
 int fz_count_chapters (int *,int *) ;

fz_location fz_clamp_location(fz_context *ctx, fz_document *doc, fz_location loc)
{
 int nc = fz_count_chapters(ctx, doc);
 int np;
 if (loc.chapter < 0) loc.chapter = 0;
 if (loc.chapter >= nc) loc.chapter = nc - 1;
 np = fz_count_chapter_pages(ctx, doc, loc.chapter);
 if (loc.page < 0) loc.page = 0;
 if (loc.page >= np) loc.page = np - 1;
 return loc;
}
