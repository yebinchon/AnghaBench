
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char wchar_t ;
struct _Locale_time {int dummy; } ;



const wchar_t* _WLocale_am_str(struct _Locale_time* ltime,
                               wchar_t* buf, size_t bufSize)
{ return L"AM"; }
