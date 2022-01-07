
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcasecmp (char const*,char const*) ;

__attribute__((used)) static inline int
CompareStrings(const char *a, const char *b)
{
    if (a && b)
        return strcasecmp(a, b);
    if (!a && !b)
        return 0;
    return a ? 1 : -1;
}
