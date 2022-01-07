
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_6__ {int wMilliseconds; int wSecond; int wMinute; int wHour; int wDay; int wMonth; int wYear; } ;
struct TYPE_5__ {scalar_t__ StandardBias; scalar_t__ DaylightBias; int Bias; } ;
typedef TYPE_1__ TIME_ZONE_INFORMATION ;
typedef TYPE_2__ SYSTEMTIME ;
typedef int LONG ;
typedef scalar_t__ DWORD ;


 int GetLocalTime (TYPE_2__*) ;
 scalar_t__ GetTimeZoneInformation (TYPE_1__*) ;
 scalar_t__ TIME_ZONE_ID_DAYLIGHT ;
 scalar_t__ TIME_ZONE_ID_INVALID ;
 char* heap_alloc (int) ;
 int sprintfW (char*,char const*,int ,int ,int ,int ,int ,int ,int,int ) ;

__attribute__((used)) static WCHAR *get_localdatetime(void)
{
    static const WCHAR fmtW[] =
        {'%','0','4','u','%','0','2','u','%','0','2','u','%','0','2','u','%','0','2','u','%','0','2','u',
         '.','%','0','6','u','%','+','0','3','d',0};
    TIME_ZONE_INFORMATION tzi;
    SYSTEMTIME st;
    WCHAR *ret;
    DWORD Status;
    LONG Bias;

    Status = GetTimeZoneInformation(&tzi);

    if(Status == TIME_ZONE_ID_INVALID) return ((void*)0);
    Bias = tzi.Bias;
    if(Status == TIME_ZONE_ID_DAYLIGHT)
        Bias+= tzi.DaylightBias;
    else
        Bias+= tzi.StandardBias;
    if (!(ret = heap_alloc( 26 * sizeof(WCHAR) ))) return ((void*)0);

    GetLocalTime(&st);
    sprintfW( ret, fmtW, st.wYear, st.wMonth, st.wDay, st.wHour, st.wMinute, st.wSecond, st.wMilliseconds * 1000, -Bias);
    return ret;
}
