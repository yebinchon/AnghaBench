
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_document ;
typedef int fz_output ;
typedef int fz_context ;


 char* fz_parse_page_range (int *,char const*,int*,int*,int) ;
 int infousage () ;
 int pdf_count_pages (int *,int *) ;
 int showpage (int *,int *,int *,int) ;

__attribute__((used)) static int
showpages(fz_context *ctx, pdf_document *doc, fz_output *out, const char *pagelist)
{
 int page, spage, epage;
 int pagecount;
 int ret = 0;

 if (!doc)
  infousage();

 pagecount = pdf_count_pages(ctx, doc);
 while ((pagelist = fz_parse_page_range(ctx, pagelist, &spage, &epage, pagecount)))
 {
  if (spage > epage)
   page = spage, spage = epage, epage = page;
  for (page = spage; page <= epage; page++)
   ret |= showpage(ctx, doc, out, page);
 }

 return ret;
}
