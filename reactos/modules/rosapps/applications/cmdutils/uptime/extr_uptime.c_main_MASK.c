#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int QuadPart; } ;
struct TYPE_6__ {int /*<<< orphan*/  wMinute; int /*<<< orphan*/  wHour; } ;
typedef  TYPE_1__ SYSTEMTIME ;
typedef  int LONGLONG ;
typedef  TYPE_2__ LARGE_INTEGER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int,...) ; 

int FUNC6(int argc, char* argv[])
{
    SYSTEMTIME SystemTime;
    LARGE_INTEGER liCount, liFreq;

    FUNC0(&SystemTime);

    if (FUNC1(&liCount) &&
        FUNC2(&liFreq))
    {
        LONGLONG TotalSecs = liCount.QuadPart / liFreq.QuadPart;
        LONGLONG Days  =  (TotalSecs / 86400);
        LONGLONG Hours = ((TotalSecs % 86400) / 3600);
        LONGLONG Mins  = ((TotalSecs % 86400) % 3600) / 60;
        LONGLONG Secs  = ((TotalSecs % 86400) % 3600) % 60;

#ifdef LINUX_OUTPUT
        UNREFERENCED_PARAMETER(Secs);
        _tprintf(_T("  %.2u:%.2u  "), SystemTime.wHour, SystemTime.wMinute);
        _tprintf(_T("up %I64u days, %I64u:%I64u\n"), Days, Hours, Mins); /*%.2I64u secs*/
#else
        FUNC5(FUNC4("System Up Time:\t\t%I64u days, %I64u Hours, %I64u Minutes, %.2I64u Seconds\n"),
                 Days, Hours, Mins, Secs);
#endif
        return 0;
    }

    return -1;
}