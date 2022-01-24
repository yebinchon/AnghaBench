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
typedef  int cmsUInt16Number ;
typedef  int /*<<< orphan*/  cmsPipeline ;
typedef  int /*<<< orphan*/  cmsNAMEDCOLORLIST ;
typedef  int cmsInt32Number ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmsAT_END ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int cmsMAXCHANNELS ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int) ; 

__attribute__((used)) static
cmsInt32Number FUNC10(void)
{
    cmsPipeline* lut = FUNC5(FUNC0(), 3, 3);
    cmsNAMEDCOLORLIST* nc;
    cmsInt32Number i,j, rc = 1, n2;
    cmsUInt16Number PCS[3];
    cmsUInt16Number Colorant[cmsMAXCHANNELS];
    char Name[255];
    cmsUInt16Number Inw[3], Outw[3];



    nc = FUNC2(FUNC0(), 256, 3, "pre", "post");
    if (nc == NULL) return 0;

    for (i=0; i < 256; i++) {

        PCS[0] = PCS[1] = PCS[2] = (cmsUInt16Number) i;
        Colorant[0] = Colorant[1] = Colorant[2] = Colorant[3] = (cmsUInt16Number) i;

        FUNC9(Name, "#%d", i);
        if (!FUNC3(FUNC0(), nc, Name, PCS, Colorant)) { rc = 0; break; }
    }

    FUNC8(FUNC0(), lut, cmsAT_END, FUNC1(FUNC0(), nc, FALSE));

    FUNC4(FUNC0(), nc);
    if (rc == 0) return 0;

    n2=0;

    for (j=0; j < 256; j++) {

        Inw[0] = (cmsUInt16Number) j;

        FUNC6(FUNC0(), Inw, Outw, lut);
        for (i=0; i < 3; i++) {

            if (Outw[i] != j) {
                n2++;
            }
        }

    }

    FUNC7(FUNC0(), lut);
    return (n2 == 0);
}