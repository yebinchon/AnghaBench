
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcasecmp (void const*,char const* const) ;

__attribute__((used)) static int modcmp (const void *a, const void *b)
{
    return strcasecmp (a, *(const char *const *)b);
}
