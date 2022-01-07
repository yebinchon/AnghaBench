
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;
 char* xmalloc (scalar_t__) ;

char *xstrsave(const char *str) {
  char *p;

  p= xmalloc(strlen(str)+1);
  strcpy(p,str);
  return p;
}
