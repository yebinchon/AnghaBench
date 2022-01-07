
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strpbrk (char*,char const*) ;

char *
fz_strsep(char **stringp, const char *delim)
{
 char *ret = *stringp;
 if (!ret) return ((void*)0);
 if ((*stringp = strpbrk(*stringp, delim)) != ((void*)0))
  *((*stringp)++) = '\0';
 return ret;
}
