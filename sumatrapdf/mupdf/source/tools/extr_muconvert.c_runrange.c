
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int count ;
 int ctx ;
 char* fz_parse_page_range (int ,char const*,int*,int*,int ) ;
 int runpage (int) ;

__attribute__((used)) static void runrange(const char *range)
{
 int start, end, i;

 while ((range = fz_parse_page_range(ctx, range, &start, &end, count)))
 {
  if (start < end)
   for (i = start; i <= end; ++i)
    runpage(i);
  else
   for (i = start; i >= end; --i)
    runpage(i);
 }
}
