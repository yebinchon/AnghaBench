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
typedef  int /*<<< orphan*/  cmsPipeline ;
typedef  int cmsInt32Number ;
typedef  int /*<<< orphan*/ * cmsHPROFILE ;
typedef  double cmsFloat32Number ;
typedef  int /*<<< orphan*/ * cmsContext ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,double,double,double) ; 
 int /*<<< orphan*/  MPEPluginSample ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cmsAT_BEGIN ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,double*,double*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cmsSigDToB3Tag ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 scalar_t__ FUNC20 (int) ; 

cmsInt32Number FUNC21(void)
{
    cmsContext ctx = NULL;
    cmsContext cpy = NULL;
    cmsHPROFILE h = NULL;
    cmsUInt32Number myTag = 1234;
    cmsUInt32Number rc = 0;
    char* data = NULL;
    cmsUInt32Number clen = 0;
    cmsFloat32Number In[3], Out[3];
    cmsPipeline* pipe;

    ctx = FUNC5(NULL);
    FUNC14(ctx, &MPEPluginSample);

    cpy =  FUNC0(ctx, NULL);

    h = FUNC7(cpy);
    if (h == NULL) {
        FUNC1("Create placeholder failed");
        goto Error;
    }

    pipe = FUNC10(cpy, 3, 3);
    FUNC13(cpy, pipe, cmsAT_BEGIN, FUNC4(cpy));


    In[0] = 0.3f; In[1] = 0.2f; In[2] = 0.9f;
    FUNC11(cpy, In, Out, pipe);

    rc = (FUNC2("0", Out[0], 1.0-In[0], 0.001) &&
           FUNC2("1", Out[1], 1.0-In[1], 0.001) &&
           FUNC2("2", Out[2], 1.0-In[2], 0.001));

    if (!rc) {
        FUNC1("Pipeline failed");
        goto Error;
    }

    if (!FUNC18(cpy, h, cmsSigDToB3Tag, pipe)) {
        FUNC1("Plug-in failed");
        goto Error;
    }

    // This cleans the stage as well
    FUNC12(cpy, pipe);

    rc = FUNC16(cpy, h, NULL, &clen);
    if (!rc) {
        FUNC1("Fetch mem size failed");
        goto Error;
    }


    data = (char*) FUNC20(clen);
    if (data == NULL) {
        FUNC1("malloc failed ?!?");
        goto Error;
    }


    rc = FUNC16(cpy, h, data, &clen);
    if (!rc) {
        FUNC1("Save to mem failed");
        goto Error;
    }

    FUNC6(cpy, h);

    FUNC17(cpy, NULL);
    h = FUNC9(cpy, data, clen);
    if (h == NULL) {
        FUNC1("Open profile failed");
        goto Error;
    }

    pipe = (cmsPipeline*) FUNC15(cpy, h, cmsSigDToB3Tag);
    if (pipe != NULL) {

        // Unsupported stage, should fail
        FUNC1("read tag/context switching failed");
        goto Error;
    }

    FUNC6(cpy, h);

    FUNC3(cpy);

    h = FUNC9(cpy, data, clen);
    if (h == NULL) {
        FUNC1("Open profile from mem failed");
        goto Error;
    }

    // Get rid of data
    FUNC19(data); data = NULL;

    pipe = (cmsPipeline*) FUNC15(cpy, h, cmsSigDToB3Tag);
    if (pipe == NULL) {
        FUNC1("Read tag/conext switching failed (2)");
        return 0;
    }

    // Evaluate for negation
    In[0] = 0.3f; In[1] = 0.2f; In[2] = 0.9f;
    FUNC11(cpy, In, Out, pipe);

     rc = (FUNC2("0", Out[0], 1.0-In[0], 0.001) &&
           FUNC2("1", Out[1], 1.0-In[1], 0.001) &&
           FUNC2("2", Out[2], 1.0-In[2], 0.001));

    FUNC6(cpy, h);
    FUNC8(ctx);
    FUNC8(cpy);
    return rc;

Error:

    if (h != NULL) FUNC6(ctx, h);
    if (ctx != NULL) FUNC8(ctx);
    if (cpy != NULL) FUNC8(cpy);
    if (data) FUNC19(data);

    return 0;
}