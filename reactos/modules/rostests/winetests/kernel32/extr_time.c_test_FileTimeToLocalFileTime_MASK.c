#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int ULONGLONG ;
typedef  void* UINT ;
struct TYPE_11__ {void* dwLowDateTime; void* dwHighDateTime; } ;
struct TYPE_10__ {int wYear; int wMonth; int wDay; scalar_t__ wHour; scalar_t__ wMinute; int wSecond; scalar_t__ wMilliseconds; } ;
struct TYPE_9__ {int /*<<< orphan*/  DaylightBias; int /*<<< orphan*/  StandardBias; scalar_t__ Bias; } ;
typedef  TYPE_1__ TIME_ZONE_INFORMATION ;
typedef  TYPE_2__ SYSTEMTIME ;
typedef  int LONGLONG ;
typedef  TYPE_3__ FILETIME ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int SECSPERMIN ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 int TICKSPERSEC ; 
 int TICKS_1601_TO_1970 ; 
 scalar_t__ TIME_ZONE_ID_DAYLIGHT ; 
 scalar_t__ TIME_ZONE_ID_INVALID ; 
 scalar_t__ TIME_ZONE_ID_STANDARD ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 

__attribute__((used)) static void FUNC6(void)
{
    FILETIME ft, lft;
    SYSTEMTIME st;
    TIME_ZONE_INFORMATION tzinfo;
    DWORD res =  FUNC3(&tzinfo);
    ULONGLONG time = (ULONGLONG)TICKSPERSEC + TICKS_1601_TO_1970 +
        (LONGLONG)(tzinfo.Bias + 
            ( res == TIME_ZONE_ID_STANDARD ? tzinfo.StandardBias :
            ( res == TIME_ZONE_ID_DAYLIGHT ? tzinfo.DaylightBias : 0 ))) *
             SECSPERMIN *TICKSPERSEC;
    BOOL ret;

    FUNC5( res != TIME_ZONE_ID_INVALID , "GetTimeZoneInformation failed\n");
    ft.dwHighDateTime = (UINT)(time >> 32);
    ft.dwLowDateTime  = (UINT)time;
    ret = FUNC0(&ft, &lft);
    FUNC5( ret,
       "FileTimeToLocalFileTime() failed with Error %d\n",FUNC2());
    FUNC1(&lft, &st);
    FUNC5(((st.wYear == 1970) && (st.wMonth == 1) && (st.wDay == 1) &&
	(st.wHour ==    0) && (st.wMinute == 0) && (st.wSecond == 1) &&
	(st.wMilliseconds == 0)),
       "Got Year %4d Month %2d Day %2d Hour %2d Min %2d Sec %2d mSec %3d\n",
       st.wYear, st.wMonth, st.wDay, st.wHour, st.wMinute, st.wSecond,
       st.wMilliseconds);

    FUNC5(FUNC4("TZ","GMT") != 0,
       "SetEnvironmentVariableA failed\n");
    FUNC5(res != TIME_ZONE_ID_INVALID, "GetTimeZoneInformation failed\n");
    ret = FUNC0(&ft, &lft);
    FUNC5( ret,
       "FileTimeToLocalFileTime() failed with Error %d\n",FUNC2());
    FUNC1(&lft, &st);
    FUNC5(((st.wYear == 1970) && (st.wMonth == 1) && (st.wDay == 1) &&
	(st.wHour ==    0) && (st.wMinute == 0) && (st.wSecond == 1) &&
	(st.wMilliseconds == 0)),
       "Got Year %4d Month %2d Day %2d Hour %2d Min %2d Sec %2d mSec %3d\n",
       st.wYear, st.wMonth, st.wDay, st.wHour, st.wMinute, st.wSecond,
       st.wMilliseconds);
    FUNC5(FUNC4("TZ",NULL) != 0,
       "SetEnvironmentVariableA failed\n");
}