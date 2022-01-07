
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ malloc (scalar_t__) ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;

char *_strdup(const char *_s)
{
  char *rv;
  if (_s == 0)
    return 0;
  rv = (char *)malloc(strlen(_s) + 1);
  if (rv == 0)
    return 0;
  strcpy(rv, _s);
  return rv;
}
