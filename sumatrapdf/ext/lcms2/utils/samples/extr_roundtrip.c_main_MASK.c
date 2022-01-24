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
typedef  int cmsUInt8Number ;
typedef  int /*<<< orphan*/ * cmsHTRANSFORM ;
typedef  int /*<<< orphan*/ * cmsHPROFILE ;

/* Variables and functions */
 int /*<<< orphan*/  INTENT_RELATIVE_COLORIMETRIC ; 
 int /*<<< orphan*/  TYPE_RGB_8 ; 
 double FUNC0 (int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int*,int*,int) ; 
 int /*<<< orphan*/  cmsFLAGS_NOOPTIMIZE ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 double FUNC7 (double) ; 

int FUNC8(int  argc, char* argv[])
{

    int r, g, b;
    cmsUInt8Number RGB[3], RGB_OUT[3];
    cmsHTRANSFORM xform;
    cmsHPROFILE hProfile;
    double err, SumX=0, SumX2=0, Peak = 0, n = 0;


    if (argc != 2) {
        FUNC6("roundtrip <RGB icc profile>\n");
        return 1;
    }

    hProfile = FUNC5(argv[1], "r");
    if (hProfile == NULL)
    {
        FUNC6("invalid profile\n");
        return 1;
    }

    xform = FUNC2(hProfile,TYPE_RGB_8, hProfile, TYPE_RGB_8, INTENT_RELATIVE_COLORIMETRIC, cmsFLAGS_NOOPTIMIZE);
    if (xform == NULL)
    {
        FUNC6("Not a valid RGB profile\n");
        return 1;
    }

    for (r=0; r< 256; r++) {
        FUNC6("%d  \r", r);
        for (g=0; g < 256; g++) {
            for (b=0; b < 256; b++) {

                RGB[0] = r;
                RGB[1] = g;
                RGB[2] = b;

                FUNC4(xform, RGB, RGB_OUT, 1);

                err = FUNC0(RGB, RGB_OUT);

                SumX  += err;
                SumX2 += err * err;
                n += 1.0;
                if (err > Peak)
                    Peak = err;

            }
        }
    }

    FUNC6("Average %g\n", SumX / n);
    FUNC6("Max %g\n", Peak);
    FUNC6("Std  %g\n", FUNC7((n*SumX2 - SumX * SumX) / (n*(n-1))));
    FUNC1(hProfile);
    FUNC3(xform);

    return 0;
}