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
typedef  int time_t ;
struct tm {int tm_wday; int tm_yday; int tm_mday; int tm_year; int tm_mon; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 char* FUNC2 (struct tm*) ; 
 struct tm* FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(void)
{
    struct tm* gmt_tm;
    time_t gmt;
    char *ret;

    if(!&p_asctime || !&p_gmtime)
    {
        FUNC5("asctime or gmtime is not available\n");
        return;
    }

    gmt = 0;
    gmt_tm = FUNC3(&gmt);
    ret = FUNC2(gmt_tm);
    FUNC1(!FUNC4(ret, "Thu Jan 01 00:00:00 1970\n"), "asctime returned %s\n", ret);

    gmt = 312433121;
    gmt_tm = FUNC3(&gmt);
    ret = FUNC2(gmt_tm);
    FUNC1(!FUNC4(ret, "Mon Nov 26 02:58:41 1979\n"), "asctime returned %s\n", ret);

    /* Week day is only checked if it's in 0..6 range */
    gmt_tm->tm_wday = 3;
    ret = FUNC2(gmt_tm);
    FUNC1(!FUNC4(ret, "Wed Nov 26 02:58:41 1979\n"), "asctime returned %s\n", ret);

    errno = 0xdeadbeef;
    gmt_tm->tm_wday = 7;
    ret = FUNC2(gmt_tm);
    FUNC1(!ret || FUNC0(!ret[0]), "asctime returned %s\n", ret);
    FUNC1(errno==EINVAL || FUNC0(errno==0xdeadbeef), "errno = %d\n", errno);

    /* Year day is ignored */
    gmt_tm->tm_wday = 3;
    gmt_tm->tm_yday = 1300;
    ret = FUNC2(gmt_tm);
    FUNC1(!FUNC4(ret, "Wed Nov 26 02:58:41 1979\n"), "asctime returned %s\n", ret);

    /* Dates that can't be displayed using 26 characters are broken */
    gmt_tm->tm_mday = 28;
    gmt_tm->tm_year = 8100;
    ret = FUNC2(gmt_tm);
    FUNC1(!FUNC4(ret, "Wed Nov 28 02:58:41 :000\n"), "asctime returned %s\n", ret);

    gmt_tm->tm_year = 264100;
    ret = FUNC2(gmt_tm);
    FUNC1(!FUNC4(ret, "Wed Nov 28 02:58:41 :000\n"), "asctime returned %s\n", ret);

    /* asctime works from year 1900 */
    errno = 0xdeadbeef;
    gmt_tm->tm_year = -1;
    ret = FUNC2(gmt_tm);
    FUNC1(!ret || FUNC0(!FUNC4(ret, "Wed Nov 28 02:58:41 190/\n")), "asctime returned %s\n", ret);
    FUNC1(errno==EINVAL || FUNC0(errno == 0xdeadbeef), "errno = %d\n", errno);

    errno = 0xdeadbeef;
    gmt_tm->tm_mon = 1;
    gmt_tm->tm_mday = 30;
    gmt_tm->tm_year = 79;
    ret = FUNC2(gmt_tm);
    FUNC1(!ret || FUNC0(!FUNC4(ret, "Wed Feb 30 02:58:41 1979\n")), "asctime returned %s\n", ret);
    FUNC1(errno==EINVAL || FUNC0(errno==0xdeadbeef), "errno = %d\n", errno);
}