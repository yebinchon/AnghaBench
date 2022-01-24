#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cmsUInt32Number ;
typedef  int /*<<< orphan*/ * cmsHTRANSFORM ;
typedef  int /*<<< orphan*/ * cmsHPROFILE ;
struct TYPE_3__ {int member_0; int member_1; int member_2; } ;
typedef  TYPE_1__ cmsFloat64Number ;
typedef  int /*<<< orphan*/  cmsCIEXYZTRIPLE ;
typedef  int /*<<< orphan*/  cmsBool ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  TYPE_RGB_DBL ; 
 int /*<<< orphan*/  TYPE_XYZ_DBL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__**,int /*<<< orphan*/ *,int) ; 
 int cmsFLAGS_NOCACHE ; 
 int cmsFLAGS_NOOPTIMIZE ; 

__attribute__((used)) static
cmsBool FUNC6(cmsHPROFILE hProfile,
                                cmsCIEXYZTRIPLE *result,
                                cmsUInt32Number intent)
{
    cmsHPROFILE hXYZ;
    cmsHTRANSFORM hTransform;
    cmsFloat64Number rgb[3][3] = {{1., 0., 0.},
    {0., 1., 0.},
    {0., 0., 1.}};

    hXYZ = FUNC3(FUNC0());
    if (hXYZ == NULL) return FALSE;

    hTransform = FUNC2(FUNC0(), hProfile, TYPE_RGB_DBL, hXYZ, TYPE_XYZ_DBL,
        intent, cmsFLAGS_NOCACHE | cmsFLAGS_NOOPTIMIZE);
    FUNC1(FUNC0(), hXYZ);
    if (hTransform == NULL) return FALSE;

    FUNC5(FUNC0(), hTransform, rgb, result, 3);
    FUNC4(FUNC0(), hTransform);
    return TRUE;
}