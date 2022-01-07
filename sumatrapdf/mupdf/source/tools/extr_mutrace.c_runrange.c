
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_document ;
typedef int fz_context ;


 char* fz_parse_page_range (int *,char const*,int*,int*,int) ;
 int runpage (int *,int *,int) ;

__attribute__((used)) static void runrange(fz_context *ctx, fz_document *doc, int count, const char *range)
{
 int start, end, i;

 while ((range = fz_parse_page_range(ctx, range, &start, &end, count)))
 {
  if (start < end)
   for (i = start; i <= end; ++i)
    runpage(ctx, doc, i);
  else
   for (i = start; i >= end; --i)
    runpage(ctx, doc, i);
 }
}
