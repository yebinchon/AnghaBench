
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 size_t INT_MAX ;
 int fatalx (char*) ;
 int vsnprintf (char*,size_t,char const*,int ) ;

int
xvsnprintf(char *str, size_t len, const char *fmt, va_list ap)
{
 int i;

 if (len > INT_MAX)
  fatalx("xsnprintf: len > INT_MAX");

 i = vsnprintf(str, len, fmt, ap);

 if (i < 0 || i >= (int)len)
  fatalx("xsnprintf: overflow");

 return i;
}
