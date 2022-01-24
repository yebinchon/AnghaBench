#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct tm {int tm_year; scalar_t__ tm_sec; scalar_t__ tm_mon; int tm_yday; int tm_mday; int tm_wday; scalar_t__ tm_hour; scalar_t__ tm_min; int tm_isdst; } ;
typedef  int errno_t ;
typedef  int __time32_t ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 struct tm* FUNC2 (int*) ; 
 int FUNC3 (struct tm*,int*) ; 
 int FUNC4 (struct tm*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(void)
{
    __time32_t valid, gmt;
    struct tm* gmt_tm, gmt_tm_s;
    errno_t err;

    if(!&p_gmtime32) {
        FUNC5("Skipping _gmtime32 tests\n");
        return;
    }

    gmt_tm = FUNC2(NULL);
    FUNC1(gmt_tm == NULL, "gmt_tm != NULL\n");

    gmt = -1;
    gmt_tm = FUNC2(&gmt);
    FUNC1(gmt_tm==NULL || FUNC0(gmt_tm->tm_year==70 && gmt_tm->tm_sec<0), "gmt_tm != NULL\n");

    gmt = valid = 0;
    gmt_tm = FUNC2(&gmt);
    if(!gmt_tm) {
        FUNC1(0, "_gmtime32() failed\n");
        return;
    }

    FUNC1(((gmt_tm->tm_year == 70) && (gmt_tm->tm_mon  == 0) && (gmt_tm->tm_yday  == 0) &&
                (gmt_tm->tm_mday ==  1) && (gmt_tm->tm_wday == 4) && (gmt_tm->tm_hour  == 0) &&
                (gmt_tm->tm_min  ==  0) && (gmt_tm->tm_sec  == 0) && (gmt_tm->tm_isdst == 0)),
            "Wrong date:Year %4d mon %2d yday %3d mday %2d wday %1d hour%2d min %2d sec %2d dst %2d\n",
            gmt_tm->tm_year, gmt_tm->tm_mon, gmt_tm->tm_yday, gmt_tm->tm_mday, gmt_tm->tm_wday,
            gmt_tm->tm_hour, gmt_tm->tm_min, gmt_tm->tm_sec, gmt_tm->tm_isdst);

    if(!&p_mkgmtime32) {
        FUNC5("Skipping _mkgmtime32 tests\n");
        return;
    }

    gmt_tm->tm_wday = gmt_tm->tm_yday = 0;
    gmt = FUNC4(gmt_tm);
    FUNC1(gmt == valid, "gmt = %u\n", gmt);
    FUNC1(gmt_tm->tm_wday == 4, "gmt_tm->tm_wday = %d\n", gmt_tm->tm_wday);
    FUNC1(gmt_tm->tm_yday == 0, "gmt_tm->tm_yday = %d\n", gmt_tm->tm_yday);

    gmt_tm->tm_wday = gmt_tm->tm_yday = 0;
    gmt_tm->tm_isdst = -1;
    gmt = FUNC4(gmt_tm);
    FUNC1(gmt == valid, "gmt = %u\n", gmt);
    FUNC1(gmt_tm->tm_wday == 4, "gmt_tm->tm_wday = %d\n", gmt_tm->tm_wday);
    FUNC1(gmt_tm->tm_yday == 0, "gmt_tm->tm_yday = %d\n", gmt_tm->tm_yday);

    gmt_tm->tm_wday = gmt_tm->tm_yday = 0;
    gmt_tm->tm_isdst = 1;
    gmt = FUNC4(gmt_tm);
    FUNC1(gmt == valid, "gmt = %u\n", gmt);
    FUNC1(gmt_tm->tm_wday == 4, "gmt_tm->tm_wday = %d\n", gmt_tm->tm_wday);
    FUNC1(gmt_tm->tm_yday == 0, "gmt_tm->tm_yday = %d\n", gmt_tm->tm_yday);

    gmt = valid = 173921;
    gmt_tm = FUNC2(&gmt);
    if(!gmt_tm) {
        FUNC1(0, "_gmtime32() failed\n");
        return;
    }

    gmt_tm->tm_isdst = -1;
    gmt = FUNC4(gmt_tm);
    FUNC1(gmt == valid, "gmt = %u\n", gmt);
    FUNC1(gmt_tm->tm_wday == 6, "gmt_tm->tm_wday = %d\n", gmt_tm->tm_wday);
    FUNC1(gmt_tm->tm_yday == 2, "gmt_tm->tm_yday = %d\n", gmt_tm->tm_yday);

    gmt_tm->tm_isdst = 1;
    gmt = FUNC4(gmt_tm);
    FUNC1(gmt == valid, "gmt = %u\n", gmt);

    if(!&p_gmtime32_s) {
        FUNC5("Skipping _gmtime32_s tests\n");
        return;
    }

    errno = 0;
    gmt = 0;
    err = FUNC3(NULL, &gmt);
    FUNC1(err == EINVAL, "err = %d\n", err);
    FUNC1(errno == EINVAL, "errno = %d\n", errno);

    errno = 0;
    gmt = -1;
    err = FUNC3(&gmt_tm_s, &gmt);
    FUNC1(gmt_tm_s.tm_year == -1 || FUNC0(gmt_tm_s.tm_year == 70 && gmt_tm_s.tm_sec < 0),
       "tm_year = %d, tm_sec = %d\n", gmt_tm_s.tm_year, gmt_tm_s.tm_sec);
    if(gmt_tm_s.tm_year == -1) {
        FUNC1(err==EINVAL, "err = %d\n", err);
        FUNC1(errno==EINVAL, "errno = %d\n", errno);
    }
}