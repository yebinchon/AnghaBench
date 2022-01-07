
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int const wchar_t ;
struct TYPE_4__ {int id; } ;
struct TYPE_5__ {TYPE_1__ lc; } ;
typedef TYPE_2__ _Locale_monetary_t ;


 int GetLocaleInfoW (int ,int ,int const*,int) ;
 int LOCALE_SNEGATIVESIGN ;

const wchar_t* _WLocale_negative_sign(_Locale_monetary_t * lmon, wchar_t* buf, size_t bufSize)
{ GetLocaleInfoW(lmon->lc.id, LOCALE_SNEGATIVESIGN, buf, (int)bufSize); return buf; }
