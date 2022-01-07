
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const*,char const*) ;

__attribute__((used)) static int strnullcmp(const char *a, const char *b)
{
    if (b == ((void*)0))
        return a != ((void*)0);
    if (a == ((void*)0))
        return -1;
    return strcmp(a, b);
}
