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
typedef  scalar_t__ cmsUInt16Number ;
typedef  int /*<<< orphan*/  cmsNAMEDCOLORLIST ;
typedef  int cmsInt32Number ;
typedef  int /*<<< orphan*/ * cmsHPROFILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int cmsMAXCHANNELS ; 
 int cmsMAX_PATH ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmsSigNamedColor2Tag ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,int) ; 
 scalar_t__ FUNC14 (char*,char*) ; 

__attribute__((used)) static
cmsInt32Number FUNC15(void)
{
    cmsNAMEDCOLORLIST* nc = NULL, *nc2;
    cmsInt32Number i, j, rc=1;
    char Name[cmsMAX_PATH];
    cmsUInt16Number PCS[3];
    cmsUInt16Number Colorant[cmsMAXCHANNELS];
    char CheckName[cmsMAX_PATH];
    cmsUInt16Number CheckPCS[3];
    cmsUInt16Number CheckColorant[cmsMAXCHANNELS];
    cmsHPROFILE h;

    nc = FUNC2(FUNC0(), 0, 4, "prefix", "suffix");
    if (nc == NULL) return 0;

    for (i=0; i < 4096; i++) {


        PCS[0] = PCS[1] = PCS[2] = (cmsUInt16Number) i;
        Colorant[0] = Colorant[1] = Colorant[2] = Colorant[3] = (cmsUInt16Number) (4096 - i);

        FUNC13(Name, "#%d", i);
        if (!FUNC3(FUNC0(), nc, Name, PCS, Colorant)) { rc = 0; break; }
    }

    for (i=0; i < 4096; i++) {

        CheckPCS[0] = CheckPCS[1] = CheckPCS[2] = (cmsUInt16Number) i;
        CheckColorant[0] = CheckColorant[1] = CheckColorant[2] = CheckColorant[3] = (cmsUInt16Number) (4096 - i);

        FUNC13(CheckName, "#%d", i);
        if (!FUNC8(FUNC0(), nc, i, Name, NULL, NULL, PCS, Colorant)) { rc = 0; goto Error; }


        for (j=0; j < 3; j++) {
            if (CheckPCS[j] != PCS[j]) { rc = 0; FUNC1("Invalid PCS"); goto Error; }
        }

        for (j=0; j < 4; j++) {
            if (CheckColorant[j] != Colorant[j]) { rc = 0; FUNC1("Invalid Colorant"); goto Error; };
        }

        if (FUNC14(Name, CheckName) != 0) {rc = 0; FUNC1("Invalid Name"); goto Error; };
    }

    h = FUNC9(FUNC0(), "namedcol.icc", "w");
    if (h == NULL) return 0;
    if (!FUNC11(FUNC0(), h, cmsSigNamedColor2Tag, nc)) return 0;
    FUNC4(FUNC0(), h);
    FUNC5(FUNC0(), nc);
    nc = NULL;

    h = FUNC9(FUNC0(), "namedcol.icc", "r");
    nc2 = (cmsNAMEDCOLORLIST *) FUNC10(FUNC0(), h, cmsSigNamedColor2Tag);

    if (FUNC6(FUNC0(), nc2) != 4096) { rc = 0; FUNC1("Invalid count"); goto Error; }

    i = FUNC7(FUNC0(), nc2, "#123");
    if (i != 123) { rc = 0; FUNC1("Invalid index"); goto Error; }


    for (i=0; i < 4096; i++) {

        CheckPCS[0] = CheckPCS[1] = CheckPCS[2] = (cmsUInt16Number) i;
        CheckColorant[0] = CheckColorant[1] = CheckColorant[2] = CheckColorant[3] = (cmsUInt16Number) (4096 - i);

        FUNC13(CheckName, "#%d", i);
        if (!FUNC8(FUNC0(), nc2, i, Name, NULL, NULL, PCS, Colorant)) { rc = 0; goto Error; }


        for (j=0; j < 3; j++) {
            if (CheckPCS[j] != PCS[j]) { rc = 0; FUNC1("Invalid PCS"); goto Error; }
        }

        for (j=0; j < 4; j++) {
            if (CheckColorant[j] != Colorant[j]) { rc = 0; FUNC1("Invalid Colorant"); goto Error; };
        }

        if (FUNC14(Name, CheckName) != 0) {rc = 0; FUNC1("Invalid Name"); goto Error; };
    }

    FUNC4(FUNC0(), h);
    FUNC12("namedcol.icc");

Error:
    if (nc != NULL) FUNC5(FUNC0(), nc);
    return rc;
}