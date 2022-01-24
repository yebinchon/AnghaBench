#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int time_t ;
struct tm {int tm_mday; int tm_hour; int tm_min; int tm_sec; int tm_year; scalar_t__ tm_mon; scalar_t__ tm_isdst; } ;
typedef  int /*<<< orphan*/  buffer ;
struct TYPE_3__ {int Bias; int StandardBias; int DaylightBias; int /*<<< orphan*/  StandardName; } ;
typedef  TYPE_1__ TIME_ZONE_INFORMATION ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int SECSPERDAY ; 
 int SECSPERHOUR ; 
 int SECSPERMIN ; 
 scalar_t__ TIME_ZONE_ID_INVALID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*) ; 
 int FUNC3 (int*) ; 
 char* FUNC4 (char*) ; 
 struct tm* FUNC5 (int*) ; 
 int FUNC6 (struct tm*) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,int,int,char*) ; 

__attribute__((used)) static void FUNC10(void)
{
    TIME_ZONE_INFORMATION tzinfo;
    DWORD res =  FUNC0(&tzinfo);
    struct tm my_tm, sav_tm;
    time_t nulltime, local_time;
    char TZ_env[256];
    char buffer[64];
    int year;
    time_t ref, secs;

    year = FUNC3( &ref );
    ref += SECSPERDAY;

    FUNC7 (res != TIME_ZONE_ID_INVALID, "GetTimeZoneInformation failed\n");
    FUNC1( CP_ACP, 0, tzinfo.StandardName, -1, buffer, sizeof(buffer), NULL, NULL );
    FUNC9( "bias %d std %d dst %d zone %s\n",
           tzinfo.Bias, tzinfo.StandardBias, tzinfo.DaylightBias, buffer );
    /* Bias may be positive or negative, to use offset of one day */
    my_tm = *FUNC5(&ref);  /* retrieve current dst flag */
    secs = SECSPERDAY - tzinfo.Bias * SECSPERMIN;
    secs -= (my_tm.tm_isdst ? tzinfo.DaylightBias : tzinfo.StandardBias) * SECSPERMIN;
    my_tm.tm_mday = 1 + secs/SECSPERDAY;
    secs = secs % SECSPERDAY;
    my_tm.tm_hour = secs / SECSPERHOUR;
    secs = secs % SECSPERHOUR;
    my_tm.tm_min = secs / SECSPERMIN;
    secs = secs % SECSPERMIN;
    my_tm.tm_sec = secs;

    my_tm.tm_year = year;
    my_tm.tm_mon  =  0;

    sav_tm = my_tm;

    local_time = FUNC6(&my_tm);
    FUNC7(local_time == ref, "mktime returned %u, expected %u\n",
       (DWORD)local_time, (DWORD)ref);
    /* now test some unnormalized struct tm's */
    my_tm = sav_tm;
    my_tm.tm_sec += 60;
    my_tm.tm_min -= 1;
    local_time = FUNC6(&my_tm);
    FUNC7(local_time == ref, "Unnormalized mktime returned %u, expected %u\n",
        (DWORD)local_time, (DWORD)ref);
    FUNC7( my_tm.tm_year == sav_tm.tm_year && my_tm.tm_mon == sav_tm.tm_mon &&
        my_tm.tm_mday == sav_tm.tm_mday && my_tm.tm_hour == sav_tm.tm_hour &&
        my_tm.tm_sec == sav_tm.tm_sec,
            "mktime returned %2d-%02d-%02d %02d:%02d expected %2d-%02d-%02d %02d:%02d\n",
            my_tm.tm_year,my_tm.tm_mon,my_tm.tm_mday,
            my_tm.tm_hour,my_tm.tm_sec,
            sav_tm.tm_year,sav_tm.tm_mon,sav_tm.tm_mday,
            sav_tm.tm_hour,sav_tm.tm_sec);
    my_tm = sav_tm;
    my_tm.tm_min -= 60;
    my_tm.tm_hour += 1;
    local_time = FUNC6(&my_tm);
    FUNC7(local_time == ref, "Unnormalized mktime returned %u, expected %u\n",
       (DWORD)local_time, (DWORD)ref);
    FUNC7( my_tm.tm_year == sav_tm.tm_year && my_tm.tm_mon == sav_tm.tm_mon &&
        my_tm.tm_mday == sav_tm.tm_mday && my_tm.tm_hour == sav_tm.tm_hour &&
        my_tm.tm_sec == sav_tm.tm_sec,
            "mktime returned %2d-%02d-%02d %02d:%02d expected %2d-%02d-%02d %02d:%02d\n",
            my_tm.tm_year,my_tm.tm_mon,my_tm.tm_mday,
            my_tm.tm_hour,my_tm.tm_sec,
            sav_tm.tm_year,sav_tm.tm_mon,sav_tm.tm_mday,
            sav_tm.tm_hour,sav_tm.tm_sec);
    my_tm = sav_tm;
    my_tm.tm_mon -= 12;
    my_tm.tm_year += 1;
    local_time = FUNC6(&my_tm);
    FUNC7(local_time == ref, "Unnormalized mktime returned %u, expected %u\n",
       (DWORD)local_time, (DWORD)ref);
    FUNC7( my_tm.tm_year == sav_tm.tm_year && my_tm.tm_mon == sav_tm.tm_mon &&
        my_tm.tm_mday == sav_tm.tm_mday && my_tm.tm_hour == sav_tm.tm_hour &&
        my_tm.tm_sec == sav_tm.tm_sec,
            "mktime returned %2d-%02d-%02d %02d:%02d expected %2d-%02d-%02d %02d:%02d\n",
            my_tm.tm_year,my_tm.tm_mon,my_tm.tm_mday,
            my_tm.tm_hour,my_tm.tm_sec,
            sav_tm.tm_year,sav_tm.tm_mon,sav_tm.tm_mday,
            sav_tm.tm_hour,sav_tm.tm_sec);
    my_tm = sav_tm;
    my_tm.tm_mon += 12;
    my_tm.tm_year -= 1;
    local_time = FUNC6(&my_tm);
    FUNC7(local_time == ref, "Unnormalized mktime returned %u, expected %u\n",
       (DWORD)local_time, (DWORD)ref);
    FUNC7( my_tm.tm_year == sav_tm.tm_year && my_tm.tm_mon == sav_tm.tm_mon &&
        my_tm.tm_mday == sav_tm.tm_mday && my_tm.tm_hour == sav_tm.tm_hour &&
        my_tm.tm_sec == sav_tm.tm_sec,
            "mktime returned %2d-%02d-%02d %02d:%02d expected %2d-%02d-%02d %02d:%02d\n",
            my_tm.tm_year,my_tm.tm_mon,my_tm.tm_mday,
            my_tm.tm_hour,my_tm.tm_sec,
            sav_tm.tm_year,sav_tm.tm_mon,sav_tm.tm_mday,
            sav_tm.tm_hour,sav_tm.tm_sec);
    /* now a bad time example */
    my_tm = sav_tm;
    my_tm.tm_year = 69;
    local_time = FUNC6(&my_tm);
    FUNC7((local_time == -1), "(bad time) mktime returned %d, expected -1\n", (int)local_time);

    my_tm = sav_tm;
    /* TEST that we are independent from the TZ variable */
    /*Argh, msvcrt doesn't have setenv() */
    FUNC2(TZ_env,255,"TZ=%s",(FUNC4("TZ")?FUNC4("TZ"):""));
    FUNC8("TZ=GMT");
    nulltime = FUNC6(&my_tm);
    FUNC7(nulltime == ref,"mktime returned 0x%08x\n",(DWORD)nulltime);
    FUNC8(TZ_env);
}