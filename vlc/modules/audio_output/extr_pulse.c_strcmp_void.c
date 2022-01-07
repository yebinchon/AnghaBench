
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (void const*,char const* const) ;

__attribute__((used)) static int strcmp_void(const void *a, const void *b)
{
    const char *const *entry = b;
    return strcmp(a, *entry);
}
