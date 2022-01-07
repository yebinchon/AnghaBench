
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static int
intern_string_eq(const void *entry, const void *element)
{
 return strcmp((const char *) entry, (const char *) element) == 0;
}
