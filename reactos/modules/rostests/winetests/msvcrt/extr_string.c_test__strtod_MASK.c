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
 int EBADF ; 
 int EINVAL ; 
 int ERANGE ; 
 int /*<<< orphan*/  LC_ALL ; 
 int FUNC0 (double,long double) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 double FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 double FUNC4 (char const*,char**) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(void)
{
    const char double1[] = "12.1";
    const char double2[] = "-13.721";
    const char double3[] = "INF";
    const char double4[] = ".21e12";
    const char double5[] = "214353e-3";
    const char double6[] = "NAN";
    const char overflow[] = "1d9999999999999999999";
    const char white_chars[] = "  d10";

    char *end;
    double d;

    d = FUNC4(double1, &end);
    FUNC1(FUNC0(d, 12.1), "d = %lf\n", d);
    FUNC1(end == double1+4, "incorrect end (%d)\n", (int)(end-double1));

    d = FUNC4(double2, &end);
    FUNC1(FUNC0(d, -13.721), "d = %lf\n", d);
    FUNC1(end == double2+7, "incorrect end (%d)\n", (int)(end-double2));

    d = FUNC4(double3, &end);
    FUNC1(FUNC0(d, 0), "d = %lf\n", d);
    FUNC1(end == double3, "incorrect end (%d)\n", (int)(end-double3));

    d = FUNC4(double4, &end);
    FUNC1(FUNC0(d, 210000000000.0), "d = %lf\n", d);
    FUNC1(end == double4+6, "incorrect end (%d)\n", (int)(end-double4));

    d = FUNC4(double5, &end);
    FUNC1(FUNC0(d, 214.353), "d = %lf\n", d);
    FUNC1(end == double5+9, "incorrect end (%d)\n", (int)(end-double5));

    d = FUNC4(double6, &end);
    FUNC1(FUNC0(d, 0), "d = %lf\n", d);
    FUNC1(end == double6, "incorrect end (%d)\n", (int)(end-double6));

    d = FUNC4("12.1d2", NULL);
    FUNC1(FUNC0(d, 12.1e2), "d = %lf\n", d);

    d = FUNC4(white_chars, &end);
    FUNC1(FUNC0(d, 0), "d = %lf\n", d);
    FUNC1(end == white_chars, "incorrect end (%d)\n", (int)(end-white_chars));

    if (!&p__strtod_l)
        FUNC5("_strtod_l not found\n");
    else
    {
        errno = EBADF;
        d = FUNC4(NULL, NULL);
        FUNC1(FUNC0(d, 0.0), "d = %lf\n", d);
        FUNC1(errno == EINVAL, "errno = %x\n", errno);

        errno = EBADF;
        end = (char *)0xdeadbeef;
        d = FUNC4(NULL, &end);
        FUNC1(FUNC0(d, 0.0), "d = %lf\n", d);
        FUNC1(errno == EINVAL, "errno = %x\n", errno);
        FUNC1(!end, "incorrect end ptr %p\n", end);

        errno = EBADF;
        d = FUNC2(NULL, NULL, NULL);
        FUNC1(FUNC0(d, 0.0), "d = %lf\n", d);
        FUNC1(errno == EINVAL, "errno = %x\n", errno);
    }

    /* Set locale with non '.' decimal point (',') */
    if(!FUNC3(LC_ALL, "Polish")) {
        FUNC5("system with limited locales\n");
        return;
    }

    d = FUNC4("12.1", NULL);
    FUNC1(FUNC0(d, 12.0), "d = %lf\n", d);

    d = FUNC4("12,1", NULL);
    FUNC1(FUNC0(d, 12.1), "d = %lf\n", d);

    FUNC3(LC_ALL, "C");

    /* Precision tests */
    d = FUNC4("0.1", NULL);
    FUNC1(FUNC0(d, 0.1), "d = %lf\n", d);
    d = FUNC4("-0.1", NULL);
    FUNC1(FUNC0(d, -0.1), "d = %lf\n", d);
    d = FUNC4("0.1281832188491894198128921", NULL);
    FUNC1(FUNC0(d, 0.1281832188491894198128921), "d = %lf\n", d);
    d = FUNC4("0.82181281288121", NULL);
    FUNC1(FUNC0(d, 0.82181281288121), "d = %lf\n", d);
    d = FUNC4("21921922352523587651128218821", NULL);
    FUNC1(FUNC0(d, 21921922352523587651128218821.0), "d = %lf\n", d);
    d = FUNC4("0.1d238", NULL);
    FUNC1(FUNC0(d, 0.1e238L), "d = %lf\n", d);
    d = FUNC4("0.1D-4736", NULL);
    FUNC1(FUNC0(d, 0.1e-4736L), "d = %lf\n", d);

    errno = 0xdeadbeef;
    FUNC4(overflow, &end);
    FUNC1(errno == ERANGE, "errno = %x\n", errno);
    FUNC1(end == overflow+21, "incorrect end (%d)\n", (int)(end-overflow));

    errno = 0xdeadbeef;
    FUNC4("-1d309", NULL);
    FUNC1(errno == ERANGE, "errno = %x\n", errno);
}