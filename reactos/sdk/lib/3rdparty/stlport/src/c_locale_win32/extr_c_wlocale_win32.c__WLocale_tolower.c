
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int wint_t ;
typedef int wchar_t ;
struct TYPE_4__ {int id; } ;
struct TYPE_5__ {TYPE_1__ lc; } ;
typedef TYPE_2__ _Locale_ctype_t ;


 int LCMAP_LOWERCASE ;
 int LCMapStringW (int ,int ,int *,int,int *,int) ;

wint_t _WLocale_tolower(_Locale_ctype_t* ltype, wint_t c) {
  wchar_t in_c = c;
  wchar_t res;

  LCMapStringW(ltype->lc.id, LCMAP_LOWERCASE, &in_c, 1, &res, 1);
  return res;
}
