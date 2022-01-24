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
typedef  int /*<<< orphan*/  cmsNAMEDCOLORLIST ;
typedef  int /*<<< orphan*/  cmsContext ;
typedef  int cmsColorSpaceSignature ;
typedef  int /*<<< orphan*/  cmsBool ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  cmsMAXCHANNELS ; 
 int cmsMAX_PATH ; 
#define  cmsSigCmyData 138 
#define  cmsSigCmykData 137 
#define  cmsSigGrayData 136 
#define  cmsSigHlsData 135 
#define  cmsSigHsvData 134 
#define  cmsSigLabData 133 
#define  cmsSigLuvData 132 
#define  cmsSigRgbData 131 
#define  cmsSigXYZData 130 
#define  cmsSigYCbCrData 129 
#define  cmsSigYxyData 128 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

__attribute__((used)) static
cmsNAMEDCOLORLIST* FUNC5(cmsContext ContextID, cmsColorSpaceSignature space, cmsBool IsInput)
{
    cmsNAMEDCOLORLIST* out;
    int i, n;
    char Buffer[cmsMAX_PATH];

    out = FUNC1(0, 12, cmsMAXCHANNELS, "", "");
    if (out == NULL) return NULL;

    switch (space) {

    case cmsSigXYZData:
        FUNC0(100, IsInput);
        FUNC2(ContextID, out, "X", NULL, NULL);
        FUNC2(ContextID, out, "Y", NULL, NULL);
        FUNC2(ContextID, out, "Z", NULL, NULL);
        break;

    case cmsSigLabData:
        FUNC0(1, IsInput);
        FUNC2(ContextID, out, "L*", NULL, NULL);
        FUNC2(ContextID, out, "a*", NULL, NULL);
        FUNC2(ContextID, out, "b*", NULL, NULL);
        break;

    case cmsSigLuvData:
        FUNC0(1, IsInput);
        FUNC2(ContextID, out, "L", NULL, NULL);
        FUNC2(ContextID, out, "u", NULL, NULL);
        FUNC2(ContextID, out, "v", NULL, NULL);
        break;

    case cmsSigYCbCrData:
        FUNC0(255, IsInput);
        FUNC2(ContextID, out, "Y", NULL, NULL );
        FUNC2(ContextID, out, "Cb", NULL, NULL);
        FUNC2(ContextID, out, "Cr", NULL, NULL);
        break;


    case cmsSigYxyData:
        FUNC0(1, IsInput);
        FUNC2(ContextID, out, "Y", NULL, NULL);
        FUNC2(ContextID, out, "x", NULL, NULL);
        FUNC2(ContextID, out, "y", NULL, NULL);
        break;

    case cmsSigRgbData:
        FUNC0(255, IsInput);
        FUNC2(ContextID, out, "R", NULL, NULL);
        FUNC2(ContextID, out, "G", NULL, NULL);
        FUNC2(ContextID, out, "B", NULL, NULL);
        break;

    case cmsSigGrayData:
        FUNC0(255, IsInput);
        FUNC2(ContextID, out, "G", NULL, NULL);
        break;

    case cmsSigHsvData:
        FUNC0(255, IsInput);
        FUNC2(ContextID, out, "H", NULL, NULL);
        FUNC2(ContextID, out, "s", NULL, NULL);
        FUNC2(ContextID, out, "v", NULL, NULL);
        break;

    case cmsSigHlsData:
        FUNC0(255, IsInput);
        FUNC2(ContextID, out, "H", NULL, NULL);
        FUNC2(ContextID, out, "l", NULL, NULL);
        FUNC2(ContextID, out, "s", NULL, NULL);
        break;

    case cmsSigCmykData:
        FUNC0(1, IsInput);
        FUNC2(ContextID, out, "C", NULL, NULL);
        FUNC2(ContextID, out, "M", NULL, NULL);
        FUNC2(ContextID, out, "Y", NULL, NULL);
        FUNC2(ContextID, out, "K", NULL, NULL);
        break;

    case cmsSigCmyData:
        FUNC0(1, IsInput);
        FUNC2(ContextID, out, "C", NULL, NULL);
        FUNC2(ContextID, out, "M", NULL, NULL);
        FUNC2(ContextID, out, "Y", NULL, NULL);
        break;

    default:

        FUNC0(1, IsInput);

        n = FUNC3(ContextID, space);

        for (i=0; i < n; i++) {

            FUNC4(Buffer, "Channel #%d", i + 1);
            FUNC2(ContextID, out, Buffer, NULL, NULL);
        }
    }

    return out;

}