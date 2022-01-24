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
typedef  int /*<<< orphan*/  cmsUInt16Number ;
typedef  int /*<<< orphan*/  cmsFloat64Number ;
typedef  int /*<<< orphan*/ * cmsContext ;

/* Variables and functions */
 int /*<<< orphan*/  CGATSoutFilename ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,char**) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 double LCMS_VERSION ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,char**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int Verbose ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int cmsMAXCHANNELS ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,double) ; 
 int /*<<< orphan*/ * hIT8in ; 
 int /*<<< orphan*/ * hIT8out ; 
 int /*<<< orphan*/  hTrans ; 
 scalar_t__ lIsFloat ; 
 int nMaxPatches ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 

int FUNC18(int argc, char *argv[])
{
    cmsUInt16Number Output[cmsMAXCHANNELS];
    cmsFloat64Number OutputFloat[cmsMAXCHANNELS];
    cmsFloat64Number InputFloat[cmsMAXCHANNELS];
    cmsContext ContextID =  NULL;

    int nPatch = 0;

    FUNC17(stderr, "LittleCMS ColorSpace conversion calculator - 4.3 [LittleCMS %2.2f]\n", LCMS_VERSION / 1000.0);

    FUNC3(ContextID, "transicc");

    Verbose = 1;

    if (argc == 1) {

        FUNC2();
        return 0;
    }

    FUNC1(ContextID, argc, argv);

    // Open profiles, create transforms
    if (!FUNC5(ContextID)) return 1;

    // Open CGATS input if specified
    FUNC4(ContextID, argc, argv);

    // Main loop: read all values and convert them
    for(;;) {

        if (hIT8in != NULL) {

            if (nPatch >= nMaxPatches) break;
            FUNC11(ContextID, nPatch++, InputFloat);

        } else {

            if (FUNC16(stdin)) break;
            FUNC12(ContextID, InputFloat);

        }

        if (lIsFloat)
            FUNC13(ContextID, hTrans, InputFloat, OutputFloat, 1);
        else
            FUNC13(ContextID, hTrans, InputFloat, Output, 1);


        if (hIT8out != NULL) {

            FUNC10(ContextID, OutputFloat);
        }
        else {

            if (lIsFloat) {
                FUNC7(ContextID, OutputFloat); FUNC9(ContextID, InputFloat);
            }
            else {
                FUNC6(ContextID, Output);   FUNC8(ContextID, InputFloat);
            }

        }
    }


    // Cleanup
    FUNC0(ContextID);

    if (hIT8in)
        FUNC14(ContextID, hIT8in);

    if (hIT8out) {
        FUNC15(ContextID, hIT8out, CGATSoutFilename);
        FUNC14(ContextID, hIT8out);
    }

    // All is ok
    return 0;
}