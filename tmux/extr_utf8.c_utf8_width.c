
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wchar_t ;


 int log_debug (char*,long,int) ;
 int utf8proc_wcwidth (scalar_t__) ;
 int wcwidth (scalar_t__) ;

__attribute__((used)) static int
utf8_width(wchar_t wc)
{
 int width;




 width = wcwidth(wc);

 if (width < 0 || width > 0xff) {
  log_debug("Unicode %04lx, wcwidth() %d", (long)wc, width);
  if (width < 0)
   return (1);

  return (-1);
 }
 return (width);
}
