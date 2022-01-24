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
 double EBADF ; 
 double EINVAL ; 
 int FUNC0 (double,double) ; 
 double FUNC1 (char*) ; 
 double errno ; 
 int /*<<< orphan*/  FUNC2 (int,char*,double) ; 
 double FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(void)
{
    double d;

    d = FUNC1("0.0");
    FUNC2(FUNC0(d, 0.0), "d = %lf\n", d);

    d = FUNC1("1.0");
    FUNC2(FUNC0(d, 1.0), "d = %lf\n", d);

    d = FUNC1("-1.0");
    FUNC2(FUNC0(d, -1.0), "d = %lf\n", d);

    if (!&p__atof_l)
    {
        FUNC4("_atof_l not found\n");
        return;
    }

    errno = EBADF;
    d = FUNC1(NULL);
    FUNC2(FUNC0(d, 0.0), "d = %lf\n", d);
    FUNC2(errno == EINVAL, "errno = %x\n", errno);

    errno = EBADF;
    d = FUNC3(NULL, NULL);
    FUNC2(FUNC0(d, 0.0), "d = %lf\n", d);
    FUNC2(errno == EINVAL, "errno = %x\n", errno);
}