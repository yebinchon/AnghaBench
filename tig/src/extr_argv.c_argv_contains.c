
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const*,char const*) ;

bool
argv_contains(const char **argv, const char *arg)
{
 int i;

 for (i = 0; argv && argv[i]; i++)
  if (!strcmp(argv[i], arg))
   return 1;
 return 0;
}
