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
typedef  int errno_t ;

/* Variables and functions */
 int EINVAL ; 
 int ERANGE ; 
 char* FUNC0 (char*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int FUNC2 (char*,int) ; 
 int FUNC3 (char*,char*,int*,int*,int*) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(void)
{
    char time[16], * result;
    int hour, minute, second, count, len;
    errno_t err;

    result = FUNC0(time);
    FUNC1(result == time, "Wrong return value\n");
    len = FUNC4(time);
    FUNC1(len == 8, "Wrong length: returned %d, should be 8\n", len);
    count = FUNC3(time, "%02d:%02d:%02d", &hour, &minute, &second);
    FUNC1(count == 3, "Wrong format: count = %d, should be 3\n", count);

    if(!&p_strtime_s) {
        FUNC5("Skipping _strtime_s tests\n");
        return;
    }

    errno = 0;
    err = FUNC2(NULL, 0);
    FUNC1(err == EINVAL, "err = %d\n", err);
    FUNC1(errno == EINVAL, "errno = %d\n", errno);

    err = FUNC2(NULL, 1);
    FUNC1(err == EINVAL, "err = %d\n", err);
    FUNC1(errno == EINVAL, "errno = %d\n", errno);

    time[0] = 'x';
    err = FUNC2(time, 8);
    FUNC1(err == ERANGE, "err = %d\n", err);
    FUNC1(errno == ERANGE, "errno = %d\n", errno);
    FUNC1(time[0] == '\0', "time[0] != '\\0'\n");

    err = FUNC2(time, 9);
    FUNC1(err == 0, "err = %x\n", err);
}