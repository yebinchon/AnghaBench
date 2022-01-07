
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
format_true(const char *s)
{
 if (s != ((void*)0) && *s != '\0' && (s[0] != '0' || s[1] != '\0'))
  return (1);
 return (0);
}
