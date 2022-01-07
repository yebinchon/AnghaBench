
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const*,char const*) ;

__attribute__((used)) static inline int
prop_cmp(const void *a, const void *b)
{
 const char *str1 = *(const char **)a;
 const char *str2 = *(const char **)b;
 return (strcmp(str1, str2));
}
