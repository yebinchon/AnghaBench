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
typedef  int /*<<< orphan*/  tm ;
struct tm {int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_mon; int tm_year; int tm_wday; int tm_yday; int tm_isdst; } ;
typedef  int /*<<< orphan*/  errno_t ;
typedef  int __time64_t ;

/* Variables and functions */
 int /*<<< orphan*/  EBADF ; 
 int /*<<< orphan*/  EINVAL ; 
 int _MAX__TIME64_T ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (struct tm*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (struct tm*,int*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(void)
{
    struct tm tm;
    __time64_t time;
    errno_t err;

    if (!&p_localtime64_s)
    {
        FUNC3("Skipping _localtime64_s tests\n");
        return;
    }

    errno = EBADF;
    err = FUNC2(NULL, NULL);
    FUNC1(err == EINVAL, "Expected _localtime64_s to return EINVAL, got %d\n", err);
    FUNC1(errno == EINVAL, "Expected errno to be EINVAL, got %d\n", errno);

    errno = EBADF;
    time = 0xdeadbeef;
    err = FUNC2(NULL, &time);
    FUNC1(err == EINVAL, "Expected _localtime64_s to return EINVAL, got %d\n", err);
    FUNC1(errno == EINVAL, "Expected errno to be EINVAL, got %d\n", errno);

    FUNC0(&tm, 0, sizeof(tm));
    errno = EBADF;
    err = FUNC2(&tm, NULL);
    FUNC1(err == EINVAL, "Expected _localtime64_s to return EINVAL, got %d\n", err);
    FUNC1(errno == EINVAL, "Expected errno to be EINVAL, got %d\n", errno);
    FUNC1(tm.tm_sec == -1 && tm.tm_min == -1 && tm.tm_hour == -1 &&
       tm.tm_mday == -1 && tm.tm_mon == -1 && tm.tm_year == -1 &&
       tm.tm_wday == -1 && tm.tm_yday == -1 && tm.tm_isdst == -1,
       "Expected tm structure members to be initialized to -1, got "
       "(%d, %d, %d, %d, %d, %d, %d, %d, %d)\n", tm.tm_sec, tm.tm_min,
       tm.tm_hour, tm.tm_mday, tm.tm_mon, tm.tm_year, tm.tm_wday, tm.tm_yday,
       tm.tm_isdst);

    FUNC0(&tm, 0, sizeof(tm));
    time = -1;
    errno = EBADF;
    err = FUNC2(&tm, &time);
    FUNC1(err == EINVAL, "Expected _localtime64_s to return EINVAL, got %d\n", err);
    FUNC1(errno == EINVAL, "Expected errno to be EINVAL, got %d\n", errno);
    FUNC1(tm.tm_sec == -1 && tm.tm_min == -1 && tm.tm_hour == -1 &&
       tm.tm_mday == -1 && tm.tm_mon == -1 && tm.tm_year == -1 &&
       tm.tm_wday == -1 && tm.tm_yday == -1 && tm.tm_isdst == -1,
       "Expected tm structure members to be initialized to -1, got "
       "(%d, %d, %d, %d, %d, %d, %d, %d, %d)\n", tm.tm_sec, tm.tm_min,
       tm.tm_hour, tm.tm_mday, tm.tm_mon, tm.tm_year, tm.tm_wday, tm.tm_yday,
       tm.tm_isdst);

    FUNC0(&tm, 0, sizeof(tm));
    time = _MAX__TIME64_T + 1;
    errno = EBADF;
    err = FUNC2(&tm, &time);
    FUNC1(err == EINVAL, "Expected _localtime64_s to return EINVAL, got %d\n", err);
    FUNC1(errno == EINVAL, "Expected errno to be EINVAL, got %d\n", errno);
    FUNC1(tm.tm_sec == -1 && tm.tm_min == -1 && tm.tm_hour == -1 &&
       tm.tm_mday == -1 && tm.tm_mon == -1 && tm.tm_year == -1 &&
       tm.tm_wday == -1 && tm.tm_yday == -1 && tm.tm_isdst == -1,
       "Expected tm structure members to be initialized to -1, got "
       "(%d, %d, %d, %d, %d, %d, %d, %d, %d)\n", tm.tm_sec, tm.tm_min,
       tm.tm_hour, tm.tm_mday, tm.tm_mon, tm.tm_year, tm.tm_wday, tm.tm_yday,
       tm.tm_isdst);
}