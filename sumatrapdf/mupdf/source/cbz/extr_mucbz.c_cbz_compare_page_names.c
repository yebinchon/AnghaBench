
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cbz_strnatcmp (char const*,char const*) ;

__attribute__((used)) static int
cbz_compare_page_names(const void *a, const void *b)
{
 return cbz_strnatcmp(*(const char **)a, *(const char **)b);
}
