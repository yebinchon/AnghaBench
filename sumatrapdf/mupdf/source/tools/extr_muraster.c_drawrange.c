
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_document ;
typedef int fz_context ;


 int drawpage (int *,int *,int) ;
 int fz_count_pages (int *,int *) ;
 char* fz_parse_page_range (int *,char const*,int*,int*,int) ;

__attribute__((used)) static void drawrange(fz_context *ctx, fz_document *doc, const char *range)
{
 int page, spage, epage, pagecount;

 pagecount = fz_count_pages(ctx, doc);

 while ((range = fz_parse_page_range(ctx, range, &spage, &epage, pagecount)))
 {
  if (spage < epage)
   for (page = spage; page <= epage; page++)
    drawpage(ctx, doc, page);
  else
   for (page = spage; page >= epage; page--)
    drawpage(ctx, doc, page);
 }
}
