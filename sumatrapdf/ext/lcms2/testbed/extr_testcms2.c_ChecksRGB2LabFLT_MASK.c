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
typedef  int cmsFloat32Number ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FLOAT_PRECISSION ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TYPE_LabA_FLT ; 
 int /*<<< orphan*/  TYPE_RGBA_FLT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*,int) ; 
 int cmsFLAGS_NOCACHE ; 
 int cmsFLAGS_NOOPTIMIZE ; 

__attribute__((used)) static
cmsInt32Number FUNC8(void)
{
    cmsHPROFILE hSRGB = FUNC5(FUNC0());
    cmsHPROFILE hLab  = FUNC3(FUNC0(), NULL);

    cmsHTRANSFORM xform1 = FUNC4(FUNC0(), hSRGB, TYPE_RGBA_FLT, hLab, TYPE_LabA_FLT, 0, cmsFLAGS_NOCACHE|cmsFLAGS_NOOPTIMIZE);
    cmsHTRANSFORM xform2 = FUNC4(FUNC0(), hLab, TYPE_LabA_FLT, hSRGB, TYPE_RGBA_FLT, 0, cmsFLAGS_NOCACHE|cmsFLAGS_NOOPTIMIZE);

    cmsFloat32Number RGBA1[4], RGBA2[4], LabA[4];
    int i;


    for (i = 0; i <= 100; i++)
    {
        RGBA1[0] = i / 100.0F;
        RGBA1[1] = i / 100.0F;
        RGBA1[2] = i / 100.0F;
        RGBA1[3] = 0;

        FUNC7(FUNC0(), xform1, RGBA1, LabA,  1);
        FUNC7(FUNC0(), xform2, LabA, RGBA2, 1);

        if (!FUNC1("Float RGB->RGB", RGBA1[0], RGBA2[0], FLOAT_PRECISSION) ||
            !FUNC1("Float RGB->RGB", RGBA1[1], RGBA2[1], FLOAT_PRECISSION) ||
            !FUNC1("Float RGB->RGB", RGBA1[2], RGBA2[2], FLOAT_PRECISSION))
            return 0;
    }


    FUNC6(FUNC0(), xform1);
    FUNC6(FUNC0(), xform2);
    FUNC2(FUNC0(), hSRGB);
    FUNC2(FUNC0(), hLab);

    return 1;
}