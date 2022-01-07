
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int fatalx (char*,int ) ;
 char* strdup (char const*) ;
 int strerror (int ) ;

char *
xstrdup(const char *str)
{
 char *cp;

 if ((cp = strdup(str)) == ((void*)0))
  fatalx("xstrdup: %s", strerror(errno));
 return cp;
}
