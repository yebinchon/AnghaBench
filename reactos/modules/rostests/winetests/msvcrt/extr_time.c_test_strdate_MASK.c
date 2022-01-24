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
    char date[16], * result;
    int month, day, year, count, len;
    errno_t err;

    result = FUNC0(date);
    FUNC1(result == date, "Wrong return value\n");
    len = FUNC4(date);
    FUNC1(len == 8, "Wrong length: returned %d, should be 8\n", len);
    count = FUNC3(date, "%02d/%02d/%02d", &month, &day, &year);
    FUNC1(count == 3, "Wrong format: count = %d, should be 3\n", count);

    if(!&p_strdate_s) {
        FUNC5("Skipping _strdate_s tests\n");
        return;
    }

    errno = 0;
    err = FUNC2(NULL, 1);
    FUNC1(err == EINVAL, "err = %d\n", err);
    FUNC1(errno == EINVAL, "errno = %d\n", errno);

    date[0] = 'x';
    date[1] = 'x';
    err = FUNC2(date, 8);
    FUNC1(err == ERANGE, "err = %d\n", err);
    FUNC1(errno == ERANGE, "errno = %d\n", errno);
    FUNC1(date[0] == '\0', "date[0] != '\\0'\n");
    FUNC1(date[1] == 'x', "date[1] != 'x'\n");

    err = FUNC2(date, 9);
    FUNC1(err == 0, "err = %x\n", err);
}