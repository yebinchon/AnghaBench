
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (char) ;
 unsigned long strtoul (char const*,char**,int) ;

__attribute__((used)) static bool
parse_ulong(const char **pos_ptr, unsigned long *value, char skip, bool optional)
{
 const char *start = *pos_ptr;
 char *end;

 if (*start != skip)
  return optional;

 start++;
 *value = strtoul(start, &end, 10);
 if (end == start)
  return 0;

 while (isspace(*end))
  end++;
 *pos_ptr = end;
 return 1;
}
