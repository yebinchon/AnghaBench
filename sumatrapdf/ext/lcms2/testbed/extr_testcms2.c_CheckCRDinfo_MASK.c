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
typedef  int /*<<< orphan*/  cmsTagSignature ;
typedef  int /*<<< orphan*/  cmsMLU ;
typedef  int cmsInt32Number ;
typedef  int /*<<< orphan*/  cmsHPROFILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 

__attribute__((used)) static
cmsInt32Number FUNC8(cmsInt32Number Pass,  cmsHPROFILE hProfile, cmsTagSignature tag)
{
    cmsMLU *mlu;
    char Buffer[256];
    cmsInt32Number rc;

    switch (Pass) {

        case 1:
            mlu = FUNC1(FUNC0(), 5);

            FUNC4(FUNC0(), mlu,  "PS", "nm", L"test postscript");
            FUNC4(FUNC0(), mlu,  "PS", "#0", L"perceptual");
            FUNC4(FUNC0(), mlu,  "PS", "#1", L"relative_colorimetric");
            FUNC4(FUNC0(), mlu,  "PS", "#2", L"saturation");
            FUNC4(FUNC0(), mlu,  "PS", "#3", L"absolute_colorimetric");
            rc = FUNC6(FUNC0(), hProfile, tag, mlu);
            FUNC2(FUNC0(), mlu);
            return rc;


        case 2:
            mlu = (cmsMLU*) FUNC5(FUNC0(), hProfile, tag);
            if (mlu == NULL) return 0;



             FUNC3(FUNC0(), mlu, "PS", "nm", Buffer, 256);
             if (FUNC7(Buffer, "test postscript") != 0) return 0;


             FUNC3(FUNC0(), mlu, "PS", "#0", Buffer, 256);
             if (FUNC7(Buffer, "perceptual") != 0) return 0;


             FUNC3(FUNC0(), mlu, "PS", "#1", Buffer, 256);
             if (FUNC7(Buffer, "relative_colorimetric") != 0) return 0;


             FUNC3(FUNC0(), mlu, "PS", "#2", Buffer, 256);
             if (FUNC7(Buffer, "saturation") != 0) return 0;


             FUNC3(FUNC0(), mlu, "PS", "#3", Buffer, 256);
             if (FUNC7(Buffer, "absolute_colorimetric") != 0) return 0;
             return 1;

        default:
            return 0;
    }
}