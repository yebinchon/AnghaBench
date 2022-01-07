
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_4__ {int id; } ;
struct TYPE_5__ {TYPE_1__ lc; } ;
typedef TYPE_2__ _Locale_numeric_t ;


 int GetLocaleInfoW (int ,int ,int *,int) ;
 int LOCALE_SDECIMAL ;

wchar_t _WLocale_decimal_point(_Locale_numeric_t* lnum) {
  wchar_t buf[4];
  GetLocaleInfoW(lnum->lc.id, LOCALE_SDECIMAL, buf, 4);
  return buf[0];
}
