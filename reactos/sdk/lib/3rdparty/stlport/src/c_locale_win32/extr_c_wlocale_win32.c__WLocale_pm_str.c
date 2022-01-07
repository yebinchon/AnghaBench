
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int const wchar_t ;
struct TYPE_4__ {int id; } ;
struct TYPE_5__ {TYPE_1__ lc; } ;
typedef TYPE_2__ _Locale_time_t ;


 int GetLocaleInfoW (int ,int ,int const*,int) ;
 int LOCALE_S2359 ;

const wchar_t* _WLocale_pm_str(_Locale_time_t* ltime,
                               wchar_t* buf, size_t bufSize)
{ GetLocaleInfoW(ltime->lc.id, LOCALE_S2359, buf, (int)bufSize); return buf; }
