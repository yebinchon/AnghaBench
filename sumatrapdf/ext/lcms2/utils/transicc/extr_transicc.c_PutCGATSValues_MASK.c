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
typedef  double cmsFloat64Number ;
typedef  int /*<<< orphan*/  cmsContext ;

/* Variables and functions */
 int /*<<< orphan*/  CGATSPatch ; 
 int /*<<< orphan*/  InputColorSpace ; 
 int OutputColorSpace ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,double) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
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
 int /*<<< orphan*/  FUNC3 (char*,char*,int,...) ; 

__attribute__((used)) static
void FUNC4(cmsContext ContextID, cmsFloat64Number Float[])
{
    FUNC2(ContextID, hIT8out, CGATSPatch, "SAMPLE_ID", CGATSPatch);
    switch (OutputColorSpace) {


    // Encoding should follow CGATS specification.

    case cmsSigXYZData:

        FUNC0(ContextID, "XYZ_X", Float[0] * 100.0);
        FUNC0(ContextID, "XYZ_Y", Float[1] * 100.0);
        FUNC0(ContextID, "XYZ_Z", Float[2] * 100.0);
        break;

    case cmsSigLabData:

        FUNC0(ContextID, "LAB_L", Float[0]);
        FUNC0(ContextID, "LAB_A", Float[1]);
        FUNC0(ContextID, "LAB_B", Float[2]);
        break;


    case cmsSigRgbData:
        FUNC0(ContextID, "RGB_R", Float[0] * 255.0);
        FUNC0(ContextID, "RGB_G", Float[1] * 255.0);
        FUNC0(ContextID, "RGB_B", Float[2] * 255.0);
        break;

    case cmsSigGrayData:
        FUNC0(ContextID, "GRAY", Float[0] * 255.0);
        break;

    case cmsSigCmykData:
        FUNC0(ContextID, "CMYK_C", Float[0]);
        FUNC0(ContextID, "CMYK_M", Float[1]);
        FUNC0(ContextID, "CMYK_Y", Float[2]);
        FUNC0(ContextID, "CMYK_K", Float[3]);
        break;

    case cmsSigCmyData:
        FUNC0(ContextID, "CMY_C", Float[0]);
        FUNC0(ContextID, "CMY_M", Float[1]);
        FUNC0(ContextID, "CMY_Y", Float[2]);
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

            n = FUNC1(ContextID, InputColorSpace);
            for (i=0; i < n; i++) {

                char Buffer[255];

                FUNC3(Buffer, "%uCLR_%u", n, i+1);

                FUNC0(ContextID, Buffer, Float[i] * 100.0);
            }
        }
        break;

    default:
        {

            cmsUInt32Number i, n;

            n = FUNC1(ContextID, InputColorSpace);
            for (i=0; i < n; i++) {

                char Buffer[255];

                FUNC3(Buffer, "CHAN_%u", i+1);

                FUNC0(ContextID, Buffer, Float[i]);
            }
        }
    }
}