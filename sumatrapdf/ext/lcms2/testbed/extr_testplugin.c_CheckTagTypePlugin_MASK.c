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
typedef  int cmsInt32Number ;
typedef  int /*<<< orphan*/ * cmsHPROFILE ;
typedef  int /*<<< orphan*/ * cmsContext ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SigInt ; 
 int /*<<< orphan*/  TagTypePluginSample ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 scalar_t__ FUNC14 (int) ; 

cmsInt32Number FUNC15(void)
{
    cmsContext ctx = NULL;
    cmsContext cpy = NULL;
    cmsHPROFILE h = NULL;
    cmsUInt32Number myTag = 1234;
    cmsUInt32Number rc = 0;
    char* data = NULL;
    cmsUInt32Number *ptr = NULL;
    cmsUInt32Number clen = 0;

    ctx = FUNC3(NULL);
    FUNC8(ctx, &TagTypePluginSample);

    cpy = FUNC0(ctx, NULL);

    h = FUNC5(cpy);
    if (h == NULL) {
        FUNC1("Create placeholder failed");
        goto Error;
    }


    if (!FUNC12(cpy, h, SigInt, &myTag)) {
        FUNC1("Plug-in failed");
        goto Error;
    }

    rc = FUNC10(cpy, h, NULL, &clen);
    if (!rc) {
        FUNC1("Fetch mem size failed");
        goto Error;
    }


    data = (char*) FUNC14(clen);
    if (data == NULL) {
        FUNC1("malloc failed ?!?");
        goto Error;
    }


    rc = FUNC10(cpy, h, data, &clen);
    if (!rc) {
        FUNC1("Save to mem failed");
        goto Error;
    }

    FUNC4(cpy, h);

    FUNC11(cpy, NULL);
    h = FUNC7(cpy, data, clen);
    if (h == NULL) {
        FUNC1("Open profile failed");
        goto Error;
    }

    ptr = (cmsUInt32Number*) FUNC9(cpy, h, SigInt);
    if (ptr != NULL) {

        FUNC1("read tag/context switching failed");
        goto Error;
    }

    FUNC4(cpy, h);
    FUNC2(cpy);

    h = FUNC7(cpy, data, clen);
    if (h == NULL) {
        FUNC1("Open profile from mem failed");
        goto Error;
    }

    // Get rid of data
    FUNC13(data); data = NULL;

    ptr = (cmsUInt32Number*) FUNC9(cpy, h, SigInt);
    if (ptr == NULL) {
        FUNC1("Read tag/conext switching failed (2)");
        return 0;
    }

    rc = (*ptr == 1234);

    FUNC4(cpy, h);
    FUNC6(ctx);
    FUNC6(cpy);

    return rc;

Error:

    if (h != NULL) FUNC4(cpy, h);
    if (ctx != NULL) FUNC6(ctx);
    if (cpy != NULL) FUNC6(cpy);
    if (data) FUNC13(data);

    return 0;
}