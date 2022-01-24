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
typedef  scalar_t__ cmsUInt32Number ;
typedef  scalar_t__ cmsUInt16Number ;
typedef  int /*<<< orphan*/  cmsNAMEDCOLORLIST ;
typedef  int /*<<< orphan*/  cmsIOHANDLER ;
typedef  int /*<<< orphan*/ * cmsHTRANSFORM ;
typedef  int /*<<< orphan*/  cmsHPROFILE ;
typedef  int /*<<< orphan*/  cmsContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TYPE_NAMED_COLOR_INDEX ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*,scalar_t__*,int) ; 
 scalar_t__ cmsFLAGS_NODEFAULTRESOURCEDEF ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int cmsMAXCHANNELS ; 
 int cmsMAX_PATH ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static
int FUNC10(cmsContext ContextID, cmsIOHANDLER* m, cmsHPROFILE hNamedColor, cmsUInt32Number Intent, cmsUInt32Number dwFlags)
{
    cmsHTRANSFORM xform;
    cmsUInt32Number i, nColors, nColorant;
    cmsUInt32Number OutputFormat;
    char ColorName[cmsMAX_PATH];
    char Colorant[128];
    cmsNAMEDCOLORLIST* NamedColorList;


    OutputFormat = FUNC6(ContextID, hNamedColor, 2, FALSE);
    nColorant    = FUNC1(OutputFormat);


    xform = FUNC3(ContextID, hNamedColor, TYPE_NAMED_COLOR_INDEX, NULL, OutputFormat, Intent, dwFlags);
    if (xform == NULL) return 0;


    NamedColorList = FUNC7(xform);
    if (NamedColorList == NULL) return 0;

    FUNC2(ContextID, m, "<<\n");
    FUNC2(ContextID, m, "(colorlistcomment) (%s) \n", "Named profile");
    FUNC2(ContextID, m, "(Prefix) [ (Pantone ) (PANTONE ) ]\n");
    FUNC2(ContextID, m, "(Suffix) [ ( CV) ( CVC) ( C) ]\n");

    nColors   = FUNC8(ContextID, NamedColorList);

    for (i=0; i < nColors; i++) {

        cmsUInt16Number In[1];
        cmsUInt16Number Out[cmsMAXCHANNELS];

        In[0] = (cmsUInt16Number) i;

        if (!FUNC9(ContextID, NamedColorList, i, ColorName, NULL, NULL, NULL, NULL))
                continue;

        FUNC5(ContextID, xform, In, Out, 1);
        FUNC0(Colorant, nColorant, Out);
        FUNC2(ContextID, m, "  (%s) [ %s ]\n", ColorName, Colorant);
    }

    FUNC2(ContextID, m, "   >>");

    if (!(dwFlags & cmsFLAGS_NODEFAULTRESOURCEDEF)) {

    FUNC2(ContextID, m, " /Current exch /HPSpotTable defineresource pop\n");
    }

    FUNC4(ContextID, xform);
    return 1;
}