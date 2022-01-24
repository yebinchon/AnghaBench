#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cmsUInt8Number ;
typedef  int /*<<< orphan*/  cmsUInt32Number ;
struct TYPE_6__ {int /*<<< orphan*/ * Table16; } ;
typedef  TYPE_1__ cmsToneCurve ;
typedef  int /*<<< orphan*/ * cmsHTRANSFORM ;
typedef  scalar_t__ cmsHPROFILE ;
typedef  int /*<<< orphan*/  cmsContext ;
struct TYPE_7__ {double Y; } ;
typedef  TYPE_2__ cmsCIEXYZ ;

/* Variables and functions */
 int /*<<< orphan*/  TYPE_GRAY_8 ; 
 int /*<<< orphan*/  TYPE_XYZ_DBL ; 
 int /*<<< orphan*/  FUNC0 (double) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int /*<<< orphan*/  cmsFLAGS_NOOPTIMIZE ; 

__attribute__((used)) static
cmsToneCurve* FUNC7(cmsContext ContextID, cmsHPROFILE hProfile, cmsUInt32Number Intent)
{
    cmsToneCurve* Out = FUNC1(ContextID, 256, NULL);
    cmsHPROFILE hXYZ  = FUNC4(ContextID);
    cmsHTRANSFORM xform = FUNC3(ContextID, hProfile, TYPE_GRAY_8, hXYZ, TYPE_XYZ_DBL, Intent, cmsFLAGS_NOOPTIMIZE);
    int i;

    if (Out != NULL && xform != NULL) {
        for (i=0; i < 256; i++) {

            cmsUInt8Number Gray = (cmsUInt8Number) i;
            cmsCIEXYZ XYZ;

            FUNC6(ContextID, xform, &Gray, &XYZ, 1);

            Out ->Table16[i] =FUNC0(XYZ.Y * 65535.0);
        }
    }

    if (xform) FUNC5(ContextID, xform);
    if (hXYZ) FUNC2(ContextID, hXYZ);
    return Out;
}