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

/* Variables and functions */
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

int FUNC6(int argc, char *argv[]) {
        FUNC2(LOG_DEBUG);

        FUNC0("17:41");
        FUNC0("18:42:44");
        FUNC0("18:42:44.0");
        FUNC0("18:42:44.999999999999");
        FUNC0("12-10-02 12:13:14");
        FUNC0("12-10-2 12:13:14");
        FUNC0("12-10-03 12:13");
        FUNC0("2012-12-30 18:42");
        FUNC0("2012-10-02");
        FUNC0("Tue 2012-10-02");
        FUNC0("yesterday");
        FUNC0("today");
        FUNC0("tomorrow");
        FUNC1("16:20 UTC");
        FUNC1("16:20 Asia/Seoul");
        FUNC1("tomorrow Asia/Seoul");
        FUNC1("2012-12-30 18:42 Asia/Seoul");
        FUNC1("now");
        FUNC1("+2d");
        FUNC1("+2y 4d");
        FUNC1("5months ago");
        FUNC1("@1395716396");
        FUNC4("1970-1-1 UTC");
        FUNC5("1970-1-1 00:00:01 UTC");
        FUNC3("1969-12-31 UTC");
        FUNC3("-100y");
        FUNC3("today UTC UTC");
        FUNC3("now Asia/Seoul");
        FUNC3("+2d Asia/Seoul");
        FUNC3("@1395716396 Asia/Seoul");
#if SIZEOF_TIME_T == 8
        test_should_pass("9999-12-30 23:59:59 UTC");
        test_should_fail("9999-12-31 00:00:00 UTC");
        test_should_fail("10000-01-01 00:00:00 UTC");
#elif SIZEOF_TIME_T == 4
        test_should_pass("2038-01-19 03:14:07 UTC");
        test_should_fail("2038-01-19 03:14:08 UTC");
#endif

        return 0;
}