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
typedef  int cmsUInt16Number ;
typedef  int /*<<< orphan*/  cmsInt32Number ;
typedef  int /*<<< orphan*/  cmsHTRANSFORM ;
typedef  int /*<<< orphan*/ * cmsHPROFILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  INTENT_RELATIVE_COLORIMETRIC ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  TYPE_RGB_16 ; 
 int /*<<< orphan*/  TYPE_RGB_FLT ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmsFLAGS_GAMUTCHECK ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static
cmsInt32Number FUNC11(void)
{
        cmsHPROFILE hSRGB, hAbove;
        cmsHTRANSFORM xform;
        cmsInt32Number rc;
        cmsUInt16Number Alarm[16] = { 0xDEAD, 0xBABE, 0xFACE };

        // Set alarm codes to fancy values so we could check the out of gamut condition
        FUNC10(FUNC3(), Alarm);

        // Create the profiles
        hSRGB  = FUNC8(FUNC3());
        hAbove = FUNC2();

        if (hSRGB == NULL || hAbove == NULL) return 0;  // Failed

        FUNC5("Gamut check on floating point");

        // Create a gamut checker in the same space. No value should be out of gamut
        xform = FUNC7(FUNC3(), hAbove, TYPE_RGB_FLT, hAbove, TYPE_RGB_FLT, hAbove,
                                INTENT_RELATIVE_COLORIMETRIC, INTENT_RELATIVE_COLORIMETRIC, cmsFLAGS_GAMUTCHECK);


        if (!FUNC1(xform, 3)) {
            FUNC6(FUNC3(), hSRGB);
            FUNC6(FUNC3(), hAbove);
            FUNC9(FUNC3(), xform);
            FUNC4("Gamut check on same profile failed");
            return 0;
        }

        FUNC9(FUNC3(), xform);

        FUNC5("Gamut check on 16 bits");

        xform = FUNC7(FUNC3(), hAbove, TYPE_RGB_16, hAbove, TYPE_RGB_16, hSRGB,
                                INTENT_RELATIVE_COLORIMETRIC, INTENT_RELATIVE_COLORIMETRIC, cmsFLAGS_GAMUTCHECK);

        FUNC6(FUNC3(), hSRGB);
        FUNC6(FUNC3(), hAbove);

        rc = FUNC0(xform, 3);

        FUNC9(FUNC3(), xform);

        return rc;
}