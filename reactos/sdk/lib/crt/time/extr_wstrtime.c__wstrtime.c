
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef char WCHAR ;
typedef int LPWSTR ;


 int GetTimeFormatW (int ,int ,int *,char const*,int ,int) ;
 int LOCALE_NEUTRAL ;

wchar_t* _wstrtime(wchar_t* time)
{
   static const WCHAR format[] = { 'H','H','\'',':','\'','m','m','\'',':','\'','s','s',0 };

   GetTimeFormatW(LOCALE_NEUTRAL, 0, ((void*)0), format, (LPWSTR)time, 9);

   return time;
}
