#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int cmsUInt32Number ;
typedef  int /*<<< orphan*/  cmsToneCurve ;
typedef  int /*<<< orphan*/  cmsPipeline ;
typedef  int /*<<< orphan*/  cmsIOHANDLER ;
typedef  int /*<<< orphan*/ * cmsHTRANSFORM ;
typedef  int /*<<< orphan*/  cmsHPROFILE ;
typedef  int /*<<< orphan*/  cmsContext ;
typedef  int /*<<< orphan*/  cmsCIEXYZ ;
struct TYPE_4__ {TYPE_1__* core; } ;
typedef  TYPE_2__ _cmsTRANSFORM ;
struct TYPE_3__ {int /*<<< orphan*/  Lut; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FALSE ; 
 int TYPE_Lab_16 ; 
 int /*<<< orphan*/  TYPE_Lab_DBL ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmsERROR_COLORSPACE_CHECK ; 
 int cmsFLAGS_FORCE_CLUT ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static
int FUNC15(cmsContext ContextID, cmsIOHANDLER* m, cmsHPROFILE hProfile, cmsUInt32Number Intent, cmsUInt32Number dwFlags)
{
    cmsHPROFILE hLab;
    cmsHTRANSFORM xform;
    cmsUInt32Number nChannels;
    cmsUInt32Number InputFormat;
    int rc;
    cmsHPROFILE Profiles[2];
    cmsCIEXYZ BlackPointAdaptedToD50;

    // Does create a device-link based transform.
    // The DeviceLink is next dumped as working CSA.

    InputFormat = FUNC10(ContextID, hProfile, 2, FALSE);
    nChannels   = FUNC3(InputFormat);


    FUNC9(ContextID, &BlackPointAdaptedToD50, hProfile, Intent, 0);

    // Adjust output to Lab4
    hLab = FUNC6(ContextID, NULL);

    Profiles[0] = hProfile;
    Profiles[1] = hLab;

    xform = FUNC7(ContextID, Profiles, 2,  InputFormat, TYPE_Lab_DBL, Intent, 0);
    FUNC5(ContextID, hLab);

    if (xform == NULL) {

        FUNC14(ContextID, cmsERROR_COLORSPACE_CHECK, "Cannot create transform Profile -> Lab");
        return 0;
    }

    // Only 1, 3 and 4 channels are allowed

    switch (nChannels) {

    case 1: {
            cmsToneCurve* Gray2Y = FUNC2(ContextID, hProfile, Intent);
            FUNC0(ContextID, m, Gray2Y, &BlackPointAdaptedToD50);
            FUNC11(ContextID, Gray2Y);
            }
            break;

    case 3:
    case 4: {
            cmsUInt32Number OutFrm = TYPE_Lab_16;
            cmsPipeline* DeviceLink;
            _cmsTRANSFORM* v = (_cmsTRANSFORM*) xform;

            DeviceLink = FUNC12(ContextID, v ->core->Lut);
            if (DeviceLink == NULL) return 0;

            dwFlags |= cmsFLAGS_FORCE_CLUT;
            FUNC4(ContextID, &DeviceLink, Intent, &InputFormat, &OutFrm, &dwFlags);

            rc = FUNC1(ContextID, m, DeviceLink, Intent, &BlackPointAdaptedToD50);
            FUNC13(ContextID, DeviceLink);
            if (rc == 0) return 0;
            }
            break;

    default:

        FUNC14(ContextID, cmsERROR_COLORSPACE_CHECK, "Only 3, 4 channels supported for CSA. This profile has %d channels.", nChannels);
        return 0;
    }


    FUNC8(ContextID, xform);

    return 1;
}