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
typedef  int cmsUInt8Number ;
typedef  int cmsInt32Number ;
typedef  int /*<<< orphan*/  cmsHTRANSFORM ;
typedef  int /*<<< orphan*/ * cmsHPROFILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  INTENT_RELATIVE_COLORIMETRIC ; 
 int /*<<< orphan*/  TYPE_GRAY_8 ; 
 int /*<<< orphan*/  TYPE_Lab_DBL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static
cmsInt32Number FUNC8(void)
{
    cmsHPROFILE hGray = FUNC1();
    cmsHPROFILE hLab  = FUNC4(FUNC2(), NULL);
    cmsHTRANSFORM xform;
    cmsInt32Number i;

    if (hGray == NULL || hLab == NULL) return 0;

    xform = FUNC5(FUNC2(), hLab, TYPE_Lab_DBL, hGray, TYPE_GRAY_8, INTENT_RELATIVE_COLORIMETRIC, 0);
    FUNC3(FUNC2(), hGray); FUNC3(FUNC2(), hLab);

    if (!FUNC0(xform, 0, 0)) return 0;
    if (!FUNC0(xform, 100, 255)) return 0;

    for (i=0; i < 100; i++) {

        cmsUInt8Number g;

        g = (cmsUInt8Number) FUNC7(i * 255.0 / 100.0 + 0.5);

        if (!FUNC0(xform, i, g)) return 0;
    }


    FUNC6(FUNC2(), xform);
    return 1;
}