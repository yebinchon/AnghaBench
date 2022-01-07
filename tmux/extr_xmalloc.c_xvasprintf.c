
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int errno ;
 int fatalx (char*,int ) ;
 int strerror (int ) ;
 int vasprintf (char**,char const*,int ) ;

int
xvasprintf(char **ret, const char *fmt, va_list ap)
{
 int i;

 i = vasprintf(ret, fmt, ap);

 if (i == -1)
  fatalx("xasprintf: %s", strerror(errno));

 return i;
}
