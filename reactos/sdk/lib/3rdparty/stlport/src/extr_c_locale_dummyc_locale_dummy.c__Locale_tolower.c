
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _Locale_ctype {int dummy; } ;


 int tolower (int) ;

int _Locale_tolower(struct _Locale_ctype*lctype, int c)
{ return tolower(c); }
