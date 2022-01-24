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
typedef  int /*<<< orphan*/  cmsStage ;
typedef  int /*<<< orphan*/  cmsPipeline ;
typedef  int cmsInt32Number ;
typedef  int /*<<< orphan*/ * cmsContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  InterpPluginSample ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cmsAT_BEGIN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int,int,int,int*) ; 

cmsInt32Number FUNC10(void)
{

    cmsPipeline* p;
    cmsStage* clut;
    cmsContext ctx;
    cmsUInt16Number In[3], Out[3];
    cmsUInt16Number identity[] = {

       0,       0,       0,
       0,       0,       0xffff,
       0,       0xffff,  0,
       0,       0xffff,  0xffff,
       0xffff,  0,       0,
       0xffff,  0,       0xffff,
       0xffff,  0xffff,  0,
       0xffff,  0xffff,  0xffff
    };


    ctx = FUNC2(NULL);
    if (ctx == NULL) {
        FUNC0("Cannot create context");
       return 0;
    }

    FUNC8(ctx, &InterpPluginSample);

    p =  FUNC4(ctx, 3, 3);
    clut = FUNC9(ctx, 2, 3, 3, identity);
    FUNC7(ctx, p, cmsAT_BEGIN, clut);

    // Do some interpolations with the plugin

    In[0] = 0; In[1] = 0; In[2] = 0;
    FUNC5(ctx, In, Out, p);

    if (!FUNC1("0", Out[0], 0xFFFF - 0)) goto Error;
    if (!FUNC1("1", Out[1], 0xFFFF - 0)) goto Error;
    if (!FUNC1("2", Out[2], 0xFFFF - 0)) goto Error;

    In[0] = 0x1234; In[1] = 0x5678; In[2] = 0x9ABC;
    FUNC5(ctx, In, Out, p);

    if (!FUNC1("0", 0xFFFF - 0x9ABC, Out[0])) goto Error;
    if (!FUNC1("1", 0xFFFF - 0x5678, Out[1])) goto Error;
    if (!FUNC1("2", 0xFFFF - 0x1234, Out[2])) goto Error;

    FUNC6(ctx, p);
    FUNC3(ctx);

    // Now without the plug-in

    p =  FUNC4(NULL, 3, 3);
    clut = FUNC9(NULL, 2, 3, 3, identity);
    FUNC7(NULL, p, cmsAT_BEGIN, clut);

    In[0] = 0; In[1] = 0; In[2] = 0;
    FUNC5(NULL, In, Out, p);

    if (!FUNC1("0", 0, Out[0])) goto Error;
    if (!FUNC1("1", 0, Out[1])) goto Error;
    if (!FUNC1("2", 0, Out[2])) goto Error;

    In[0] = 0x1234; In[1] = 0x5678; In[2] = 0x9ABC;
    FUNC5(NULL, In, Out, p);

    if (!FUNC1("0", 0x1234, Out[0])) goto Error;
    if (!FUNC1("1", 0x5678, Out[1])) goto Error;
    if (!FUNC1("2", 0x9ABC, Out[2])) goto Error;

    FUNC6(NULL, p);
    return 1;

Error:
    FUNC6(NULL, p);
    return 0;
}