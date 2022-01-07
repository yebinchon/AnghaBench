
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef char WCHAR ;
typedef int LPWSTR ;


 int GetDateFormatW (int ,int ,int *,char const*,int ,int) ;
 int LOCALE_NEUTRAL ;

wchar_t* _wstrdate(wchar_t* date)
{
   static const WCHAR format[] = { 'M','M','\'','/','\'','d','d','\'','/','\'','y','y',0 };

   GetDateFormatW(LOCALE_NEUTRAL, 0, ((void*)0), format, (LPWSTR)date, 9);

   return date;

}
