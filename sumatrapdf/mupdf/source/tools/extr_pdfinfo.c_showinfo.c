
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int doc; int * out; } ;
typedef TYPE_1__ globals ;
typedef int fz_output ;
typedef int fz_context ;


 int clearinfo (int *,TYPE_1__*) ;
 char* fz_parse_page_range (int *,char const*,int*,int*,int) ;
 int fz_write_printf (int *,int *,char*,...) ;
 int gatherpageinfo (int *,TYPE_1__*,int,int) ;
 int infousage () ;
 int pdf_count_pages (int *,int ) ;
 int printinfo (int *,TYPE_1__*,char*,int,int) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static void
showinfo(fz_context *ctx, globals *glo, char *filename, int show, const char *pagelist)
{
 int page, spage, epage;
 int allpages;
 int pagecount;
 fz_output *out = glo->out;

 if (!glo->doc)
  infousage();

 allpages = !strcmp(pagelist, "1-N");

 pagecount = pdf_count_pages(ctx, glo->doc);

 while ((pagelist = fz_parse_page_range(ctx, pagelist, &spage, &epage, pagecount)))
 {
  if (allpages)
   fz_write_printf(ctx, out, "Retrieving info from pages %d-%d...\n", spage, epage);
  for (page = spage; page <= epage; page++)
  {
   gatherpageinfo(ctx, glo, page, show);
   if (!allpages)
   {
    fz_write_printf(ctx, out, "Page %d:\n", page);
    printinfo(ctx, glo, filename, show, page);
    fz_write_printf(ctx, out, "\n");
    clearinfo(ctx, glo);
   }
  }
 }

 if (allpages)
  printinfo(ctx, glo, filename, show, -1);
}
