#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * cmsHTRANSFORM ;
typedef  int /*<<< orphan*/  cmsHPROFILE ;
typedef  int /*<<< orphan*/  cmsContext ;
struct TYPE_8__ {double X; double Y; double Z; } ;
typedef  TYPE_1__ cmsCIEXYZ ;
struct TYPE_9__ {int L; int a; int b; } ;
typedef  TYPE_2__ cmsCIELab ;
typedef  int /*<<< orphan*/  cmsBool ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  INTENT_PERCEPTUAL ; 
 int /*<<< orphan*/  LCMS_USED_AS_INPUT ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*) ; 

__attribute__((used)) static
cmsBool FUNC5(cmsContext ContextID, cmsCIEXYZ* BlackPoint, cmsHPROFILE hProfile)
{
    cmsHTRANSFORM hRoundTrip;
    cmsCIELab LabIn, LabOut;
    cmsCIEXYZ  BlackXYZ;

     // Is the intent supported by the profile?
    if (!FUNC3(ContextID, hProfile, INTENT_PERCEPTUAL, LCMS_USED_AS_INPUT)) {

        BlackPoint -> X = BlackPoint ->Y = BlackPoint -> Z = 0.0;
        return TRUE;
    }

    hRoundTrip = FUNC0(ContextID, hProfile, INTENT_PERCEPTUAL);
    if (hRoundTrip == NULL) {
        BlackPoint -> X = BlackPoint ->Y = BlackPoint -> Z = 0.0;
        return FALSE;
    }

    LabIn.L = LabIn.a = LabIn.b = 0;
    FUNC2(ContextID, hRoundTrip, &LabIn, &LabOut, 1);

    // Clip Lab to reasonable limits
    if (LabOut.L > 50) LabOut.L = 50;
    LabOut.a = LabOut.b = 0;

    FUNC1(ContextID, hRoundTrip);

    // Convert it to XYZ
    FUNC4(ContextID, NULL, &BlackXYZ, &LabOut);

    if (BlackPoint != NULL)
        *BlackPoint = BlackXYZ;

    return TRUE;
}