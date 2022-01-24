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
typedef  int cmsUInt32Number ;
typedef  int /*<<< orphan*/  cmsNAMEDCOLORLIST ;
typedef  double cmsFloat64Number ;
typedef  int /*<<< orphan*/  cmsContext ;

/* Variables and functions */
 int /*<<< orphan*/  CGATSPatch ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 double FUNC1 (int /*<<< orphan*/ ,char*,double) ; 
 int InputColorSpace ; 
 scalar_t__ InputNamedColor ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 double FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
#define  cmsSig10colorData 148 
#define  cmsSig11colorData 147 
#define  cmsSig12colorData 146 
#define  cmsSig13colorData 145 
#define  cmsSig14colorData 144 
#define  cmsSig15colorData 143 
#define  cmsSig1colorData 142 
#define  cmsSig2colorData 141 
#define  cmsSig3colorData 140 
#define  cmsSig4colorData 139 
#define  cmsSig5colorData 138 
#define  cmsSig6colorData 137 
#define  cmsSig7colorData 136 
#define  cmsSig8colorData 135 
#define  cmsSig9colorData 134 
#define  cmsSigCmyData 133 
#define  cmsSigCmykData 132 
#define  cmsSigGrayData 131 
#define  cmsSigLabData 130 
#define  cmsSigRgbData 129 
#define  cmsSigXYZData 128 
 int /*<<< orphan*/  hIT8in ; 
 int /*<<< orphan*/  hTrans ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int,...) ; 

__attribute__((used)) static
    void FUNC8(cmsContext ContextID, int nPatch, cmsFloat64Number Float[])
{

    // At first take the name if SAMPLE_ID is present
    if (FUNC5(ContextID, hIT8in, nPatch, CGATSPatch) == NULL) {
        FUNC0("Sorry, I need 'SAMPLE_ID' on input CGATS to operate.");
    }


    // Special handling for named color profiles.
    // Lookup the name in the names database (the transform)

    if (InputNamedColor) {

        const cmsNAMEDCOLORLIST* NamedColorList;
        int index;

        NamedColorList = FUNC3(hTrans);
        if (NamedColorList == NULL)
            FUNC0("Malformed named color profile");

        index = FUNC6(ContextID, NamedColorList, CGATSPatch);
        if (index < 0)
            FUNC0("Named color '%s' not found in the profile", CGATSPatch);

        Float[0] = index;
        return;
    }

    // Color is not a spot color, proceed.

    switch (InputColorSpace) {

        // Encoding should follow CGATS specification.

    case cmsSigXYZData:
        Float[0] = FUNC4(ContextID, hIT8in, CGATSPatch, "XYZ_X") / 100.0;
        Float[1] = FUNC4(ContextID, hIT8in, CGATSPatch, "XYZ_Y") / 100.0;
        Float[2] = FUNC4(ContextID, hIT8in, CGATSPatch, "XYZ_Z") / 100.0;
        break;

    case cmsSigLabData:
        Float[0] = FUNC4(ContextID, hIT8in, CGATSPatch, "LAB_L");
        Float[1] = FUNC4(ContextID, hIT8in, CGATSPatch, "LAB_A");
        Float[2] = FUNC4(ContextID, hIT8in, CGATSPatch, "LAB_B");
        break;


    case cmsSigRgbData:
        Float[0] = FUNC1(ContextID, "RGB_R", 255.0);
        Float[1] = FUNC1(ContextID, "RGB_G", 255.0);
        Float[2] = FUNC1(ContextID, "RGB_B", 255.0);
        break;

    case cmsSigGrayData:
        Float[0] = FUNC1(ContextID, "GRAY", 255.0);
        break;

    case cmsSigCmykData:
        Float[0] = FUNC1(ContextID, "CMYK_C", 1.0);
        Float[1] = FUNC1(ContextID, "CMYK_M", 1.0);
        Float[2] = FUNC1(ContextID, "CMYK_Y", 1.0);
        Float[3] = FUNC1(ContextID, "CMYK_K", 1.0);
        break;

    case cmsSigCmyData:
        Float[0] = FUNC1(ContextID, "CMY_C", 1.0);
        Float[1] = FUNC1(ContextID, "CMY_M", 1.0);
        Float[2] = FUNC1(ContextID, "CMY_Y", 1.0);
        break;

    case cmsSig1colorData:
    case cmsSig2colorData:
    case cmsSig3colorData:
    case cmsSig4colorData:
    case cmsSig5colorData:
    case cmsSig6colorData:
    case cmsSig7colorData:
    case cmsSig8colorData:
    case cmsSig9colorData:
    case cmsSig10colorData:
    case cmsSig11colorData:
    case cmsSig12colorData:
    case cmsSig13colorData:
    case cmsSig14colorData:
    case cmsSig15colorData:
        {
            cmsUInt32Number i, n;

            n = FUNC2(ContextID, InputColorSpace);
            for (i=0; i < n; i++) {

                char Buffer[255];

                FUNC7(Buffer, "%uCLR_%u", n, i+1);
                Float[i] = FUNC1(ContextID, Buffer, 100.0);
            }

        }
        break;

    default:
        {
            cmsUInt32Number i, n;

            n = FUNC2(ContextID, InputColorSpace);
            for (i=0; i < n; i++) {

                char Buffer[255];

                FUNC7(Buffer, "CHAN_%u", i+1);
                Float[i] = FUNC1(ContextID, Buffer, 1.0);
            }

        }
    }

}