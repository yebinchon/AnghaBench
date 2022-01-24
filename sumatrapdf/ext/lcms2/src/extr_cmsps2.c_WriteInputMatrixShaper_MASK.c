#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cmsToneCurve ;
typedef  int /*<<< orphan*/  cmsStage ;
struct TYPE_5__ {TYPE_1__* v; } ;
typedef  TYPE_2__ cmsMAT3 ;
typedef  int /*<<< orphan*/  cmsIOHANDLER ;
typedef  int /*<<< orphan*/  cmsHPROFILE ;
typedef  int /*<<< orphan*/  cmsFloat64Number ;
typedef  int /*<<< orphan*/  cmsContext ;
typedef  scalar_t__ cmsColorSpaceSignature ;
typedef  int /*<<< orphan*/  cmsCIEXYZ ;
struct TYPE_4__ {int /*<<< orphan*/ * n; } ;
typedef  int /*<<< orphan*/  Mat ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INTENT_RELATIVE_COLORIMETRIC ; 
 int /*<<< orphan*/  MAX_ENCODEABLE_XYZ ; 
 int /*<<< orphan*/ ** FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmsERROR_COLORSPACE_CHECK ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ cmsSigGrayData ; 
 scalar_t__ cmsSigRgbData ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static
int FUNC8(cmsContext ContextID, cmsIOHANDLER* m, cmsHPROFILE hProfile, cmsStage* Matrix, cmsStage* Shaper)
{
    cmsColorSpaceSignature ColorSpace;
    int rc;
    cmsCIEXYZ BlackPointAdaptedToD50;

    ColorSpace = FUNC5(ContextID, hProfile);

    FUNC4(ContextID, &BlackPointAdaptedToD50, hProfile, INTENT_RELATIVE_COLORIMETRIC, 0);

    if (ColorSpace == cmsSigGrayData) {

        cmsToneCurve** ShaperCurve = FUNC3(Shaper);
        rc = FUNC0(ContextID, m, ShaperCurve[0], &BlackPointAdaptedToD50);

    }
    else
        if (ColorSpace == cmsSigRgbData) {

            cmsMAT3 Mat;
            int i, j;

            FUNC7(&Mat, FUNC2(Matrix), sizeof(Mat));

            for (i = 0; i < 3; i++)
                for (j = 0; j < 3; j++)
                    Mat.v[i].n[j] *= MAX_ENCODEABLE_XYZ;

            rc = FUNC1(ContextID, m, (cmsFloat64Number *) &Mat,
                FUNC3(Shaper),
                &BlackPointAdaptedToD50);
        }
        else {

            FUNC6(ContextID, cmsERROR_COLORSPACE_CHECK, "Profile is not suitable for CSA. Unsupported colorspace.");
            return 0;
        }

    return rc;
}