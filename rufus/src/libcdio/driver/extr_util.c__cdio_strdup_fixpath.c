
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isalpha (char) ;
 char* strdup (char const*) ;
 int strlen (char*) ;

char *
_cdio_strdup_fixpath (const char path[])
{
  char *new_path = ((void*)0);

  if (path)
    {
       new_path = strdup (path);
    }

  return new_path;
}
