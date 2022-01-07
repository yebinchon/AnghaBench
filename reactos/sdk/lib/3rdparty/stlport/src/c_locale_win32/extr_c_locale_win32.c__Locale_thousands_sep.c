
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* thousands_sep; } ;
typedef TYPE_1__ _Locale_numeric_t ;



char _Locale_thousands_sep(_Locale_numeric_t* lnum)
{ return lnum->thousands_sep[0]; }
