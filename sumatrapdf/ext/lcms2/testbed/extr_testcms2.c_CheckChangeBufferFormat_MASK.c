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
typedef  int /*<<< orphan*/ * cmsHTRANSFORM ;
typedef  int /*<<< orphan*/  cmsHPROFILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,double,double,int,double,double,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  INTENT_PERCEPTUAL ; 
 int /*<<< orphan*/  TYPE_BGR_16 ; 
 int /*<<< orphan*/  TYPE_RGB_16 ; 
 int /*<<< orphan*/  TYPE_RGB_DBL ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static
cmsInt32Number FUNC8(void)
{
    cmsHPROFILE hsRGB = FUNC6(FUNC2());
    cmsHTRANSFORM xform;
    cmsHTRANSFORM xform2;


    xform = FUNC5(FUNC2(), hsRGB, TYPE_RGB_16, hsRGB, TYPE_RGB_16, INTENT_PERCEPTUAL, 0);
    FUNC4(FUNC2(), hsRGB);
    if (xform == NULL) return 0;


    if (!FUNC0(xform, 0, 0, 0, 0, 0, 0)) return 0;
    if (!FUNC0(xform, 120, 0, 0, 120, 0, 0)) return 0;
    if (!FUNC0(xform, 0, 222, 255, 0, 222, 255)) return 0;

    xform2 = FUNC3(FUNC2(), xform, TYPE_BGR_16, TYPE_RGB_16);
    if (!xform2) return 0;

    if (!FUNC0(xform2, 0, 0, 123, 123, 0, 0)) return 0;
    if (!FUNC0(xform2, 154, 234, 0, 0, 234, 154)) return 0;

    FUNC7(FUNC2(),xform2);
    xform2 = FUNC3(FUNC2(), xform, TYPE_RGB_DBL, TYPE_RGB_DBL);
    if (!xform2) return 0;

    if (!FUNC1(xform2, 0.20, 0, 0, 0.20, 0, 0)) return 0;
    if (!FUNC1(xform2, 0, 0.9, 1, 0, 0.9, 1)) return 0;

    FUNC7(FUNC2(),xform2);
    FUNC7(FUNC2(),xform);

return 1;
}