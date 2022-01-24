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
typedef  double cmsUInt8Number ;
typedef  size_t cmsUInt32Number ;
typedef  int /*<<< orphan*/  cmsHTRANSFORM ;
typedef  int /*<<< orphan*/  cmsHPROFILE ;
typedef  scalar_t__ cmsColorSpaceSignature ;

/* Variables and functions */
 size_t FUNC0 (int) ; 
 size_t FUNC1 (size_t) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  ErrorReportingFunction ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FatalErrorQuit ; 
 int /*<<< orphan*/  PT_ANY ; 
 int /*<<< orphan*/  PT_Lab ; 
 int /*<<< orphan*/  TYPE_BGR_8 ; 
 scalar_t__ FUNC4 (size_t) ; 
 scalar_t__ TrappedError ; 
 size_t FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,double*,double*,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ cmsSigLabData ; 

__attribute__((used)) static
int FUNC14(void)
{
    cmsUInt32Number i;
    cmsHPROFILE srcProfile;
    cmsHPROFILE dstProfile;
    cmsColorSpaceSignature srcCS;
    cmsUInt32Number nSrcComponents;
    cmsUInt32Number srcFormat;
    cmsUInt32Number intent = 0;
    cmsUInt32Number flags = 0;
    cmsHTRANSFORM hTransform;
    cmsUInt8Number output[4];

    srcProfile = FUNC12(FUNC3(), "bad_mpe.icc", "r");
    if (!srcProfile)
        return 0;

    dstProfile = FUNC8(FUNC3());
    if (!dstProfile) {
        FUNC6(FUNC3(), srcProfile);
        return 0;
    }

    srcCS = FUNC11(FUNC3(), srcProfile);
    nSrcComponents = FUNC5(FUNC3(), srcCS);

    if (srcCS == cmsSigLabData) {
        srcFormat =
            FUNC2(PT_Lab) | FUNC1(nSrcComponents) | FUNC0(0);
    }
    else {
        srcFormat =
            FUNC2(PT_ANY) | FUNC1(nSrcComponents) | FUNC0(1);
    }

    FUNC13(FUNC3(), ErrorReportingFunction);

    hTransform = FUNC7(FUNC3(), srcProfile, srcFormat, dstProfile,
        TYPE_BGR_8, intent, flags);
    FUNC6(FUNC3(), srcProfile);
    FUNC6(FUNC3(), dstProfile);

    FUNC13(FUNC3(), FatalErrorQuit);

    // Should report error
    if (!TrappedError) return 0;

    TrappedError = FALSE;

    // Transform should NOT be created
    if (!hTransform) return 1;

    // Never should reach here
    if (FUNC4(srcFormat) == 0) {  // 0 means double
        double input[128];
        for (i = 0; i < nSrcComponents; i++)
            input[i] = 0.5f;
        FUNC10(FUNC3(), hTransform, input, output, 1);
    }
    else {
        cmsUInt8Number input[128];
        for (i = 0; i < nSrcComponents; i++)
            input[i] = 128;
        FUNC10(FUNC3(), hTransform, input, output, 1);
    }
    FUNC9(FUNC3(), hTransform);

    return 0;
}