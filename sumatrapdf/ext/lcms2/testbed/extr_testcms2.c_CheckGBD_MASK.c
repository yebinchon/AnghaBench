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
typedef  scalar_t__ cmsUInt8Number ;
typedef  int cmsUInt32Number ;
typedef  int cmsInt32Number ;
typedef  int /*<<< orphan*/  cmsHTRANSFORM ;
typedef  int /*<<< orphan*/  cmsHPROFILE ;
typedef  int /*<<< orphan*/ * cmsHANDLE ;
struct TYPE_8__ {int L; int a; int b; } ;
typedef  TYPE_1__ cmsCIELab ;
struct TYPE_9__ {int L; int C; int h; } ;
typedef  TYPE_2__ cmsCIELCh ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  INTENT_RELATIVE_COLORIMETRIC ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  TYPE_Lab_DBL ; 
 int /*<<< orphan*/  TYPE_RGB_8 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  cmsFLAGS_NOCACHE ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,TYPE_1__*,TYPE_2__*) ; 

__attribute__((used)) static
cmsInt32Number FUNC14(void)
{
    cmsCIELab Lab;
    cmsHANDLE  h;
    cmsInt32Number L, a, b;
    cmsUInt32Number r1, g1, b1;
    cmsHPROFILE hLab, hsRGB;
    cmsHTRANSFORM xform;

    h = FUNC8(FUNC0());
    if (h == NULL) return 0;

    // Fill all Lab gamut as valid
    FUNC1("Filling RAW gamut");

    for (L=0; L <= 100; L += 10)
        for (a = -128; a <= 128; a += 5)
            for (b = -128; b <= 128; b += 5) {

                Lab.L = L;
                Lab.a = a;
                Lab.b = b;
                if (!FUNC10(FUNC0(), h, &Lab)) return 0;
            }

    // Complete boundaries
    FUNC1("computing Lab gamut");
    if (!FUNC12(FUNC0(), h, 0)) return 0;


    // All points should be inside gamut
    FUNC1("checking Lab gamut");
    for (L=10; L <= 90; L += 25)
        for (a = -120; a <= 120; a += 25)
            for (b = -120; b <= 120; b += 25) {

                Lab.L = L;
                Lab.a = a;
                Lab.b = b;
                if (!FUNC11(FUNC0(), h, &Lab)) {
                    return 0;
                }
            }
    FUNC9(FUNC0(), h);


    // Now for sRGB
    FUNC1("checking sRGB gamut");
    h = FUNC8(FUNC0());
    hsRGB = FUNC5(FUNC0());
    hLab  = FUNC3(FUNC0(), NULL);

    xform = FUNC4(FUNC0(), hsRGB, TYPE_RGB_8, hLab, TYPE_Lab_DBL, INTENT_RELATIVE_COLORIMETRIC, cmsFLAGS_NOCACHE);
    FUNC2(FUNC0(), hsRGB); FUNC2(FUNC0(), hLab);


    for (r1=0; r1 < 256; r1 += 5) {
        for (g1=0; g1 < 256; g1 += 5)
            for (b1=0; b1 < 256; b1 += 5) {


                cmsUInt8Number rgb[3];

                rgb[0] = (cmsUInt8Number) r1;
                rgb[1] = (cmsUInt8Number) g1;
                rgb[2] = (cmsUInt8Number) b1;

                FUNC7(FUNC0(), xform, rgb, &Lab, 1);

                // if (fabs(Lab.b) < 20 && Lab.a > 0) continue;

                if (!FUNC10(FUNC0(), h, &Lab)) {
                    FUNC9(FUNC0(), h);
                    return 0;
                }


            }
    }


    if (!FUNC12(FUNC0(), h, 0)) return 0;
    // cmsGBDdumpVRML(h, "c:\\colormaps\\lab.wrl");

    for (r1=10; r1 < 200; r1 += 10) {
        for (g1=10; g1 < 200; g1 += 10)
            for (b1=10; b1 < 200; b1 += 10) {


                cmsUInt8Number rgb[3];

                rgb[0] = (cmsUInt8Number) r1;
                rgb[1] = (cmsUInt8Number) g1;
                rgb[2] = (cmsUInt8Number) b1;

                FUNC7(FUNC0(), xform, rgb, &Lab, 1);
                if (!FUNC11(FUNC0(), h, &Lab)) {

                    FUNC6(FUNC0(), xform);
                    FUNC9(FUNC0(), h);
                    return 0;
                }
            }
    }


    FUNC6(FUNC0(), xform);
    FUNC9(FUNC0(), h);

    FUNC1("checking LCh chroma ring");
    h = FUNC8(FUNC0());


    for (r1=0; r1 < 360; r1++) {

        cmsCIELCh LCh;

        LCh.L = 70;
        LCh.C = 60;
        LCh.h = r1;

        FUNC13(FUNC0(), &Lab, &LCh);
        if (!FUNC10(FUNC0(), h, &Lab)) {
                    FUNC9(FUNC0(), h);
                    return 0;
                }
    }


    if (!FUNC12(FUNC0(), h, 0)) return 0;

    FUNC9(FUNC0(), h);

    return 1;
}