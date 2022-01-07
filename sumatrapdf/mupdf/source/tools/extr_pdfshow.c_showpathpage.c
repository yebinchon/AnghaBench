
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SEP ;
 int atoi (char*) ;
 int ctx ;
 int doc ;
 int fz_strlcpy (char*,char*,int) ;
 char* fz_strsep (char**,int ) ;
 int fz_write_string (int ,int ,char*) ;
 scalar_t__ isnumber (char*) ;
 int out ;
 int pdf_count_pages (int ,int ) ;
 int pdf_lookup_page_obj (int ,int ,int) ;
 int showpages () ;
 int showpath (char*,int ) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static void showpathpage(char *path)
{
 if (path)
 {
  char *part = fz_strsep(&path, SEP);
  if (part && part[0])
  {
   if (!strcmp(part, "*"))
   {
    int i, n;
    char buf[1000];
    n = pdf_count_pages(ctx, doc);
    for (i = 0; i < n; ++i)
    {
     if (path)
     {
      fz_strlcpy(buf, path, sizeof buf);
      showpath(buf, pdf_lookup_page_obj(ctx, doc, i));
     }
     else
      showpath(((void*)0), pdf_lookup_page_obj(ctx, doc, i));
    }
   }
   else if (isnumber(part))
    showpath(path, pdf_lookup_page_obj(ctx, doc, atoi(part)-1));
   else
    fz_write_string(ctx, out, "null\n");
  }
  else
   fz_write_string(ctx, out, "null\n");
 }
 else
 {
  showpages();
 }
}
