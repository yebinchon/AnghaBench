#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int x; } ;
typedef  TYPE_1__ _CRT_DOUBLE ;

/* Variables and functions */
 int _OVERFLOW ; 
 int _UNDERFLOW ; 
 int FUNC0 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int) ; 
 int FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(void)
{
    _CRT_DOUBLE d;
    char num[32];
    int ret;

    if(!&p__atodbl_l) {
        /* Old versions of msvcrt use different values for _OVERFLOW and _UNDERFLOW
         * Because of this lets skip _atodbl tests when _atodbl_l is not available */
        FUNC5("_atodbl_l is not available\n");
        return;
    }

    num[0] = 0;
    ret = FUNC3(&d, num, NULL);
    FUNC2(ret == 0, "_atodbl_l(&d, \"\", NULL) returned %d, expected 0\n", ret);
    FUNC2(d.x == 0, "d.x = %lf, expected 0\n", d.x);
    ret = FUNC0(&d, num);
    FUNC2(ret == 0, "_atodbl(&d, \"\") returned %d, expected 0\n", ret);
    FUNC2(d.x == 0, "d.x = %lf, expected 0\n", d.x);

    FUNC4(num, "t");
    ret = FUNC3(&d, num, NULL);
    FUNC2(ret == 0, "_atodbl_l(&d, \"t\", NULL) returned %d, expected 0\n", ret);
    FUNC2(d.x == 0, "d.x = %lf, expected 0\n", d.x);
    ret = FUNC0(&d, num);
    FUNC2(ret == 0, "_atodbl(&d, \"t\") returned %d, expected 0\n", ret);
    FUNC2(d.x == 0, "d.x = %lf, expected 0\n", d.x);

    FUNC4(num, "0");
    ret = FUNC3(&d, num, NULL);
    FUNC2(ret == 0, "_atodbl_l(&d, \"0\", NULL) returned %d, expected 0\n", ret);
    FUNC2(d.x == 0, "d.x = %lf, expected 0\n", d.x);
    ret = FUNC0(&d, num);
    FUNC2(ret == 0, "_atodbl(&d, \"0\") returned %d, expected 0\n", ret);
    FUNC2(d.x == 0, "d.x = %lf, expected 0\n", d.x);

    FUNC4(num, "123");
    ret = FUNC3(&d, num, NULL);
    FUNC2(ret == 0, "_atodbl_l(&d, \"123\", NULL) returned %d, expected 0\n", ret);
    FUNC2(d.x == 123, "d.x = %lf, expected 123\n", d.x);
    ret = FUNC0(&d, num);
    FUNC2(ret == 0, "_atodbl(&d, \"123\") returned %d, expected 0\n", ret);
    FUNC2(d.x == 123, "d.x = %lf, expected 123\n", d.x);

    FUNC4(num, "1e-309");
    ret = FUNC3(&d, num, NULL);
    FUNC2(ret == _UNDERFLOW, "_atodbl_l(&d, \"1e-309\", NULL) returned %d, expected _UNDERFLOW\n", ret);
    FUNC2(d.x!=0 && FUNC1(d.x, 0), "d.x = %le, expected 0\n", d.x);
    ret = FUNC0(&d, num);
    FUNC2(ret == _UNDERFLOW, "_atodbl(&d, \"1e-309\") returned %d, expected _UNDERFLOW\n", ret);
    FUNC2(d.x!=0 && FUNC1(d.x, 0), "d.x = %le, expected 0\n", d.x);

    FUNC4(num, "1e309");
    ret = FUNC3(&d, num, NULL);
    FUNC2(ret == _OVERFLOW, "_atodbl_l(&d, \"1e309\", NULL) returned %d, expected _OVERFLOW\n", ret);
    ret = FUNC0(&d, num);
    FUNC2(ret == _OVERFLOW, "_atodbl(&d, \"1e309\") returned %d, expected _OVERFLOW\n", ret);
}