
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


 int GetLocaleInfoW (int ,scalar_t__,int const*,int) ;
 scalar_t__ LOCALE_SDAYNAME1 ;

const wchar_t * _WLocale_full_dayofweek(_Locale_time_t * ltime, int day,
                                        wchar_t* buf, size_t bufSize)
{ GetLocaleInfoW(ltime->lc.id, LOCALE_SDAYNAME1 + day, buf, (int)bufSize); return buf; }
