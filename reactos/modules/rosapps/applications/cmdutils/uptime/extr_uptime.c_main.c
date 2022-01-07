
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int QuadPart; } ;
struct TYPE_6__ {int wMinute; int wHour; } ;
typedef TYPE_1__ SYSTEMTIME ;
typedef int LONGLONG ;
typedef TYPE_2__ LARGE_INTEGER ;


 int GetLocalTime (TYPE_1__*) ;
 scalar_t__ QueryPerformanceCounter (TYPE_2__*) ;
 scalar_t__ QueryPerformanceFrequency (TYPE_2__*) ;
 int UNREFERENCED_PARAMETER (int) ;
 int _T (char*) ;
 int _tprintf (int ,int,int,...) ;

int main(int argc, char* argv[])
{
    SYSTEMTIME SystemTime;
    LARGE_INTEGER liCount, liFreq;

    GetLocalTime(&SystemTime);

    if (QueryPerformanceCounter(&liCount) &&
        QueryPerformanceFrequency(&liFreq))
    {
        LONGLONG TotalSecs = liCount.QuadPart / liFreq.QuadPart;
        LONGLONG Days = (TotalSecs / 86400);
        LONGLONG Hours = ((TotalSecs % 86400) / 3600);
        LONGLONG Mins = ((TotalSecs % 86400) % 3600) / 60;
        LONGLONG Secs = ((TotalSecs % 86400) % 3600) % 60;






        _tprintf(_T("System Up Time:\t\t%I64u days, %I64u Hours, %I64u Minutes, %.2I64u Seconds\n"),
                 Days, Hours, Mins, Secs);

        return 0;
    }

    return -1;
}
