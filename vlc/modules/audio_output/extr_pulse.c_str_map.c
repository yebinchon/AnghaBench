
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** bsearch (char const*,char const* const**,size_t,int,int ) ;
 int strcmp_void ;

__attribute__((used)) static const char *str_map(const char *key, const char *const table[][2],
                           size_t n)
{
     const char **r = bsearch(key, table, n, sizeof (*table), strcmp_void);
     return (r != ((void*)0)) ? r[1] : ((void*)0);
}
