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
 int EDOM ; 
 int /*<<< orphan*/  INFINITY ; 
 int /*<<< orphan*/  NAN ; 
 int FUNC0 (double,double) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 double FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 double FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void)
{
    double ret;

    errno = 0xdeadbeef;
    FUNC2(NAN);
    FUNC1(errno == EDOM, "errno = %d\n", errno);

    errno = 0xdeadbeef;
    ret = FUNC2(INFINITY);
    FUNC1(FUNC0(ret, 1.57079632679489661923), "ret = %lf\n", ret);
    FUNC1(errno == 0xdeadbeef, "errno = %d\n", errno);

    errno = 0xdeadbeef;
    ret = FUNC2(-INFINITY);
    FUNC1(FUNC0(ret, -1.57079632679489661923), "ret = %lf\n", ret);
    FUNC1(errno == 0xdeadbeef, "errno = %d\n", errno);

    errno = 0xdeadbeef;
    FUNC4(NAN);
    FUNC1(errno == EDOM, "errno = %d\n", errno);

    errno = 0xdeadbeef;
    ret = FUNC4(INFINITY);
    FUNC1(FUNC0(ret, 1.0), "ret = %lf\n", ret);
    FUNC1(errno == 0xdeadbeef, "errno = %d\n", errno);

    errno = 0xdeadbeef;
    FUNC3(NAN);
    FUNC1(errno == EDOM, "errno = %d\n", errno);

    errno = 0xdeadbeef;
    FUNC3(INFINITY);
    FUNC1(errno == 0xdeadbeef, "errno = %d\n", errno);
}