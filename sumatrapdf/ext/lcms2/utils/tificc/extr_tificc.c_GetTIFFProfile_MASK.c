#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cmsUInt8Number ;
typedef  int /*<<< orphan*/  cmsUInt32Number ;
typedef  int /*<<< orphan*/  cmsUInt16Number ;
typedef  int /*<<< orphan*/  cmsToneCurve ;
typedef  int /*<<< orphan*/ * cmsHPROFILE ;
typedef  void* cmsFloat32Number ;
struct TYPE_10__ {double Y; void* y; void* x; } ;
struct TYPE_9__ {double Y; void* y; void* x; } ;
struct TYPE_8__ {double Y; void* y; void* x; } ;
struct TYPE_11__ {TYPE_3__ Blue; TYPE_2__ Green; TYPE_1__ Red; } ;
typedef  TYPE_4__ cmsCIExyYTRIPLE ;
struct TYPE_12__ {double Y; void* y; void* x; } ;
typedef  TYPE_5__ cmsCIExyY ;
typedef  int /*<<< orphan*/  TIFF ;

/* Variables and functions */
 scalar_t__ IgnoreEmbedded ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * SaveEmbedded ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void***,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  TIFFTAG_ICCPROFILE ; 
 int /*<<< orphan*/  TIFFTAG_PRIMARYCHROMATICITIES ; 
 int /*<<< orphan*/  TIFFTAG_TRANSFERFUNCTION ; 
 int /*<<< orphan*/  TIFFTAG_WHITEPOINT ; 
 scalar_t__ Verbose ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,TYPE_5__*,TYPE_4__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static
cmsHPROFILE FUNC10(TIFF* in)
{
    cmsCIExyYTRIPLE Primaries;
    cmsFloat32Number* chr;
    cmsCIExyY WhitePoint;
    cmsFloat32Number* wp;
    int i;
    cmsToneCurve* Curve[3];
    cmsUInt16Number *gmr, *gmg, *gmb;
    cmsHPROFILE hProfile;
    cmsUInt32Number EmbedLen;
    cmsUInt8Number* EmbedBuffer;

    if (IgnoreEmbedded) return NULL;

    if (FUNC2(in, TIFFTAG_ICCPROFILE, &EmbedLen, &EmbedBuffer)) {

        hProfile = FUNC7(EmbedBuffer, EmbedLen);

        // Print description found in the profile
        if (Verbose && (hProfile != NULL)) {

            FUNC9(stdout, "\n[Embedded profile]\n");
            FUNC0(NULL, hProfile);
            FUNC8(stdout);
        }

        if (hProfile != NULL && SaveEmbedded != NULL)
            FUNC1(EmbedBuffer, EmbedLen, SaveEmbedded);

        if (hProfile) return hProfile;
    }

    // Try to see if "colorimetric" tiff

    if (FUNC2(in, TIFFTAG_PRIMARYCHROMATICITIES, &chr)) {

        Primaries.Red.x   =  chr[0];
        Primaries.Red.y   =  chr[1];
        Primaries.Green.x =  chr[2];
        Primaries.Green.y =  chr[3];
        Primaries.Blue.x  =  chr[4];
        Primaries.Blue.y  =  chr[5];

        Primaries.Red.Y = Primaries.Green.Y = Primaries.Blue.Y = 1.0;

        if (FUNC2(in, TIFFTAG_WHITEPOINT, &wp)) {

            WhitePoint.x = wp[0];
            WhitePoint.y = wp[1];
            WhitePoint.Y = 1.0;

            // Transferfunction is a bit harder....

            FUNC3(in, TIFFTAG_TRANSFERFUNCTION,
                &gmr,
                &gmg,
                &gmb);

            Curve[0] = FUNC4(NULL, 256, gmr);
            Curve[1] = FUNC4(NULL, 256, gmg);
            Curve[2] = FUNC4(NULL, 256, gmb);

            hProfile = FUNC5(NULL, &WhitePoint, &Primaries, Curve);

            for (i=0; i < 3; i++)
                FUNC6(NULL, Curve[i]);

            if (Verbose) {
                FUNC9(stdout, "\n[Colorimetric TIFF]\n");
            }


            return hProfile;
        }
    }

    return NULL;
}