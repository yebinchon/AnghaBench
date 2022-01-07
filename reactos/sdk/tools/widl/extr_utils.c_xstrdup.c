
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int ) ;
 char* strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;
 char* xmalloc (scalar_t__) ;

char *xstrdup(const char *str)
{
 char *s;

 assert(str != ((void*)0));
 s = xmalloc(strlen(str)+1);
 return strcpy(s, str);
}
