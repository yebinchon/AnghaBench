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
typedef  int cmsInt32Number ;
typedef  int /*<<< orphan*/  cmsHTRANSFORM ;
typedef  int /*<<< orphan*/  cmsHPROFILE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  INTENT_RELATIVE_COLORIMETRIC ; 
 int /*<<< orphan*/  TYPE_RGB_FLT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
cmsInt32Number FUNC7(void)
{
    cmsHPROFILE hAbove, hSRGB;
    cmsHTRANSFORM xform;
    cmsInt32Number rc1, rc2;

    hAbove = FUNC1();
    xform = FUNC4(FUNC2(), hAbove, TYPE_RGB_FLT, hAbove, TYPE_RGB_FLT,  INTENT_RELATIVE_COLORIMETRIC, 0);
    FUNC3(FUNC2(), hAbove);
    rc1 = FUNC0(xform, 3);
    FUNC6(FUNC2(), xform);

    hSRGB = FUNC5(FUNC2());
    xform = FUNC4(FUNC2(), hSRGB, TYPE_RGB_FLT, hSRGB, TYPE_RGB_FLT,  INTENT_RELATIVE_COLORIMETRIC, 0);
    FUNC3(FUNC2(), hSRGB);
    rc2 = FUNC0(xform, 3);
    FUNC6(FUNC2(), xform);


    return rc1 && rc2;
}