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
typedef  int /*<<< orphan*/  cmsToneCurve ;
typedef  int /*<<< orphan*/  cmsInt32Number ;
typedef  int /*<<< orphan*/  cmsBool ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static
cmsInt32Number FUNC6(void)
{
    cmsToneCurve *Forward, *Reverse, *Result;
    cmsBool  rc;

    Forward = FUNC2(FUNC0(), 3.0);
    Reverse = FUNC2(FUNC0(), 3.0);

    Result = FUNC5(FUNC0(), Forward, Reverse, 256);

    FUNC3(FUNC0(), Forward); FUNC3(FUNC0(), Reverse);

    rc = FUNC4(FUNC0(), Result);
    FUNC3(FUNC0(), Result);

    if (!rc)
        FUNC1("Joining same curve twice does not result in a linear ramp");

    return rc;
}