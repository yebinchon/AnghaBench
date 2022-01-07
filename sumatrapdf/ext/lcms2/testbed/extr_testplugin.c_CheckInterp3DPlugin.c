
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt16Number ;
typedef int cmsStage ;
typedef int cmsPipeline ;
typedef int cmsInt32Number ;
typedef int * cmsContext ;


 int Fail (char*) ;
 int InterpPluginSample ;
 int IsGoodWord (char*,int,int) ;
 int * WatchDogContext (int *) ;
 int cmsAT_BEGIN ;
 int cmsDeleteContext (int *) ;
 int * cmsPipelineAlloc (int *,int,int) ;
 int cmsPipelineEval16 (int *,int*,int*,int *) ;
 int cmsPipelineFree (int *,int *) ;
 int cmsPipelineInsertStage (int *,int *,int ,int *) ;
 int cmsPlugin (int *,int *) ;
 int * cmsStageAllocCLut16bit (int *,int,int,int,int*) ;

cmsInt32Number CheckInterp3DPlugin(void)
{

    cmsPipeline* p;
    cmsStage* clut;
    cmsContext ctx;
    cmsUInt16Number In[3], Out[3];
    cmsUInt16Number identity[] = {

       0, 0, 0,
       0, 0, 0xffff,
       0, 0xffff, 0,
       0, 0xffff, 0xffff,
       0xffff, 0, 0,
       0xffff, 0, 0xffff,
       0xffff, 0xffff, 0,
       0xffff, 0xffff, 0xffff
    };


    ctx = WatchDogContext(((void*)0));
    if (ctx == ((void*)0)) {
        Fail("Cannot create context");
       return 0;
    }

    cmsPlugin(ctx, &InterpPluginSample);

    p = cmsPipelineAlloc(ctx, 3, 3);
    clut = cmsStageAllocCLut16bit(ctx, 2, 3, 3, identity);
    cmsPipelineInsertStage(ctx, p, cmsAT_BEGIN, clut);



    In[0] = 0; In[1] = 0; In[2] = 0;
    cmsPipelineEval16(ctx, In, Out, p);

    if (!IsGoodWord("0", Out[0], 0xFFFF - 0)) goto Error;
    if (!IsGoodWord("1", Out[1], 0xFFFF - 0)) goto Error;
    if (!IsGoodWord("2", Out[2], 0xFFFF - 0)) goto Error;

    In[0] = 0x1234; In[1] = 0x5678; In[2] = 0x9ABC;
    cmsPipelineEval16(ctx, In, Out, p);

    if (!IsGoodWord("0", 0xFFFF - 0x9ABC, Out[0])) goto Error;
    if (!IsGoodWord("1", 0xFFFF - 0x5678, Out[1])) goto Error;
    if (!IsGoodWord("2", 0xFFFF - 0x1234, Out[2])) goto Error;

    cmsPipelineFree(ctx, p);
    cmsDeleteContext(ctx);



    p = cmsPipelineAlloc(((void*)0), 3, 3);
    clut = cmsStageAllocCLut16bit(((void*)0), 2, 3, 3, identity);
    cmsPipelineInsertStage(((void*)0), p, cmsAT_BEGIN, clut);

    In[0] = 0; In[1] = 0; In[2] = 0;
    cmsPipelineEval16(((void*)0), In, Out, p);

    if (!IsGoodWord("0", 0, Out[0])) goto Error;
    if (!IsGoodWord("1", 0, Out[1])) goto Error;
    if (!IsGoodWord("2", 0, Out[2])) goto Error;

    In[0] = 0x1234; In[1] = 0x5678; In[2] = 0x9ABC;
    cmsPipelineEval16(((void*)0), In, Out, p);

    if (!IsGoodWord("0", 0x1234, Out[0])) goto Error;
    if (!IsGoodWord("1", 0x5678, Out[1])) goto Error;
    if (!IsGoodWord("2", 0x9ABC, Out[2])) goto Error;

    cmsPipelineFree(((void*)0), p);
    return 1;

Error:
    cmsPipelineFree(((void*)0), p);
    return 0;
}
