
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

fz_location fz_last_page(fz_context *ctx, fz_document *doc)
{
 int nc = fz_count_chapters(ctx, doc);
 int np = fz_count_chapter_pages(ctx, doc, nc-1);
 return fz_make_location(nc-1, np-1);
}
