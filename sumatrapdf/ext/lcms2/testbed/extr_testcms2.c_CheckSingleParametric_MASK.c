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
typedef  int (* dblfnptr ) (int,int /*<<< orphan*/  const*) ;
typedef  int /*<<< orphan*/  cmsToneCurve ;
typedef  int cmsInt32Number ;
typedef  int /*<<< orphan*/  cmsFloat64Number ;
typedef  int cmsFloat32Number ;
typedef  int /*<<< orphan*/  cmsBool ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FIXED_PRECISION_15_16 ; 
 int /*<<< orphan*/  FUNC1 (char const*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/  const*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char const*) ; 

__attribute__((used)) static
cmsBool FUNC6(const char* Name, dblfnptr fn, cmsInt32Number Type, const cmsFloat64Number Params[])
{
    cmsInt32Number i;
    cmsToneCurve* tc;
    cmsToneCurve* tc_1;
    char InverseText[256];

    tc = FUNC2(FUNC0(), Type, Params);
    tc_1 = FUNC2(FUNC0(), -Type, Params);

    for (i=0; i <= 1000; i++) {

        cmsFloat32Number x = (cmsFloat32Number) i / 1000;
        cmsFloat32Number y_fn, y_param, x_param, y_param2;

        y_fn = fn(x, Params);
        y_param = FUNC3(FUNC0(), tc, x);
        x_param = FUNC3(FUNC0(), tc_1, y_param);

        y_param2 = fn(x_param, Params);

        if (!FUNC1(Name, y_fn, y_param, FIXED_PRECISION_15_16))
            goto Error;

        FUNC5(InverseText, "Inverse %s", Name);
        if (!FUNC1(InverseText, y_fn, y_param2, FIXED_PRECISION_15_16))
            goto Error;
    }

    FUNC4(FUNC0(), tc);
    FUNC4(FUNC0(), tc_1);
    return TRUE;

Error:
    FUNC4(FUNC0(), tc);
    FUNC4(FUNC0(), tc_1);
    return FALSE;
}