
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcasecmp (void const*,char const* const) ;

__attribute__((used)) static int bsearch_strcmp_cb(const void *a, const void *b)
{
    const char *const *entry = b;
    return strcasecmp(a, *entry);
}
