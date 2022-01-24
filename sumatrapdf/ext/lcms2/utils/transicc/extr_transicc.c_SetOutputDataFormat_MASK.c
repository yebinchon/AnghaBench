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
typedef  int /*<<< orphan*/  cmsContext ;

/* Variables and functions */
 char* IncludePart ; 
 int OutputColorSpace ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
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
 int /*<<< orphan*/  hIT8out ; 
 int nMaxPatches ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int,...) ; 

__attribute__((used)) static
void FUNC7(cmsContext ContextID)
{
    FUNC1(ContextID, hIT8out, "%.4g");
    FUNC5(ContextID, hIT8out, "ORIGINATOR", "icctrans");

    if (IncludePart != NULL)
        FUNC5(ContextID, hIT8out, ".INCLUDE", IncludePart);

    FUNC2(ContextID, hIT8out, "Data follows");
    FUNC4(ContextID, hIT8out, "NUMBER_OF_SETS", nMaxPatches);


    switch (OutputColorSpace) {


        // Encoding should follow CGATS specification.

    case cmsSigXYZData:
        FUNC4(ContextID, hIT8out, "NUMBER_OF_FIELDS", 4);
        FUNC3(ContextID, hIT8out, 0, "SAMPLE_ID");
        FUNC3(ContextID, hIT8out, 1, "XYZ_X");
        FUNC3(ContextID, hIT8out, 2, "XYZ_Y");
        FUNC3(ContextID, hIT8out, 3, "XYZ_Z");
        break;

    case cmsSigLabData:
        FUNC4(ContextID, hIT8out, "NUMBER_OF_FIELDS", 4);
        FUNC3(ContextID, hIT8out, 0, "SAMPLE_ID");
        FUNC3(ContextID, hIT8out, 1, "LAB_L");
        FUNC3(ContextID, hIT8out, 2, "LAB_A");
        FUNC3(ContextID, hIT8out, 3, "LAB_B");
        break;


    case cmsSigRgbData:
        FUNC4(ContextID, hIT8out, "NUMBER_OF_FIELDS", 4);
        FUNC3(ContextID, hIT8out, 0, "SAMPLE_ID");
        FUNC3(ContextID, hIT8out, 1, "RGB_R");
        FUNC3(ContextID, hIT8out, 2, "RGB_G");
        FUNC3(ContextID, hIT8out, 3, "RGB_B");
        break;

    case cmsSigGrayData:
        FUNC4(ContextID, hIT8out, "NUMBER_OF_FIELDS", 2);
        FUNC3(ContextID, hIT8out, 0, "SAMPLE_ID");
        FUNC3(ContextID, hIT8out, 1, "GRAY");
        break;

    case cmsSigCmykData:
        FUNC4(ContextID, hIT8out, "NUMBER_OF_FIELDS", 5);
        FUNC3(ContextID, hIT8out, 0, "SAMPLE_ID");
        FUNC3(ContextID, hIT8out, 1, "CMYK_C");
        FUNC3(ContextID, hIT8out, 2, "CMYK_M");
        FUNC3(ContextID, hIT8out, 3, "CMYK_Y");
        FUNC3(ContextID, hIT8out, 4, "CMYK_K");
        break;

    case cmsSigCmyData:
        FUNC4(ContextID, hIT8out, "NUMBER_OF_FIELDS", 4);
        FUNC3(ContextID, hIT8out, 0, "SAMPLE_ID");
        FUNC3(ContextID, hIT8out, 1, "CMY_C");
        FUNC3(ContextID, hIT8out, 2, "CMY_M");
        FUNC3(ContextID, hIT8out, 3, "CMY_Y");
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
            int i, n;
            char Buffer[255];

            n = FUNC0(ContextID, OutputColorSpace);
            FUNC4(ContextID, hIT8out, "NUMBER_OF_FIELDS", n+1);
            FUNC3(ContextID, hIT8out, 0, "SAMPLE_ID");

            for (i=1; i <= n; i++) {
                FUNC6(Buffer, "%dCLR_%d", n, i);
                FUNC3(ContextID, hIT8out, i, Buffer);
            }
        }
        break;

    default: {

        int i, n;
        char Buffer[255];

        n = FUNC0(ContextID, OutputColorSpace);
        FUNC4(ContextID, hIT8out, "NUMBER_OF_FIELDS", n+1);
        FUNC3(ContextID, hIT8out, 0, "SAMPLE_ID");

        for (i=1; i <= n; i++) {
            FUNC6(Buffer, "CHAN_%d", i);
            FUNC3(ContextID, hIT8out, i, Buffer);
        }
    }
    }
}