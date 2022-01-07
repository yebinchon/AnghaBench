
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int LPWSTR ;


 int COUNTOF (scalar_t__) ;
 int GetLocaleInfoW (int ,int ,int ,int ) ;
 int LOCALE_SDECIMAL ;
 int LOCALE_STHOUSAND ;
 int lcid ;
 scalar_t__ szComma ;
 scalar_t__ szDecimal ;

VOID
GetInternational()
{
   GetLocaleInfoW(lcid, LOCALE_STHOUSAND, (LPWSTR) szComma, COUNTOF(szComma));
   GetLocaleInfoW(lcid, LOCALE_SDECIMAL, (LPWSTR) szDecimal, COUNTOF(szDecimal));
}
