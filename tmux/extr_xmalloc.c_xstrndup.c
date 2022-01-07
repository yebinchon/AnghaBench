
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int fatalx (char*,int ) ;
 int strerror (int ) ;
 char* strndup (char const*,size_t) ;

char *
xstrndup(const char *str, size_t maxlen)
{
 char *cp;

 if ((cp = strndup(str, maxlen)) == ((void*)0))
  fatalx("xstrndup: %s", strerror(errno));
 return cp;
}
