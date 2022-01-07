
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int time_t ;
struct tm {scalar_t__ tm_sec; scalar_t__ tm_min; scalar_t__ tm_hour; scalar_t__ tm_mday; scalar_t__ tm_wday; scalar_t__ tm_mon; scalar_t__ tm_year; } ;
typedef void* WORD ;
typedef int VOID ;
struct TYPE_4__ {scalar_t__ wMilliseconds; void* wSecond; void* wMinute; void* wHour; void* wDay; void* wDayOfWeek; void* wMonth; void* wYear; } ;
typedef TYPE_1__ SYSTEMTIME ;
typedef scalar_t__ LPWSTR ;


 scalar_t__ BUFFER_SIZE ;
 unsigned int GetDateFormatW (int ,int ,TYPE_1__*,int *,scalar_t__,scalar_t__) ;
 int GetTimeFormatW (int ,int ,TYPE_1__*,int *,scalar_t__,scalar_t__) ;
 int LOCALE_SYSTEM_DEFAULT ;
 struct tm* localtime (int *) ;
 scalar_t__ swprintf (scalar_t__,char*) ;

__attribute__((used)) static
VOID
FormatDateTime(time_t Time, LPWSTR lpBuf)
{
    unsigned i;
    SYSTEMTIME SysTime;
    const struct tm *lpTm;

    lpTm = localtime(&Time);
    SysTime.wYear = (WORD)(1900 + lpTm->tm_year);
    SysTime.wMonth = (WORD)(1 + lpTm->tm_mon);
    SysTime.wDayOfWeek = (WORD)lpTm->tm_wday;
    SysTime.wDay = (WORD)lpTm->tm_mday;
    SysTime.wHour = (WORD)lpTm->tm_hour;
    SysTime.wMinute = (WORD)lpTm->tm_min;
    SysTime.wSecond = (WORD)lpTm->tm_sec;
    SysTime.wMilliseconds = 0;


    i = GetDateFormatW(LOCALE_SYSTEM_DEFAULT, 0, &SysTime, ((void*)0), lpBuf, BUFFER_SIZE - 2);
    if (i)
        --i;


    i += swprintf(lpBuf + i, L", ");

    GetTimeFormatW(LOCALE_SYSTEM_DEFAULT, 0, &SysTime, ((void*)0), lpBuf + i, BUFFER_SIZE - i);
}
