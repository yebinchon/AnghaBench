
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct _Locale_ctype {int dummy; } ;
typedef TYPE_1__* locale_t ;
struct TYPE_2__ {int* __ctype_toupper; } ;



int _Locale_toupper( struct _Locale_ctype *__loc, int c )
{ return ((locale_t)__loc)->__ctype_toupper[c]; }
