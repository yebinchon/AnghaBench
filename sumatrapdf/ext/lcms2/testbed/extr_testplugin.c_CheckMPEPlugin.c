
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt32Number ;
typedef int cmsPipeline ;
typedef int cmsInt32Number ;
typedef int * cmsHPROFILE ;
typedef double cmsFloat32Number ;
typedef int * cmsContext ;


 int * DupContext (int *,int *) ;
 int Fail (char*) ;
 scalar_t__ IsGoodVal (char*,double,double,double) ;
 int MPEPluginSample ;
 int ResetFatalError (int *) ;
 int StageAllocNegate (int *) ;
 int * WatchDogContext (int *) ;
 int cmsAT_BEGIN ;
 int cmsCloseProfile (int *,int *) ;
 int * cmsCreateProfilePlaceholder (int *) ;
 int cmsDeleteContext (int *) ;
 int * cmsOpenProfileFromMem (int *,char*,int) ;
 int * cmsPipelineAlloc (int *,int,int) ;
 int cmsPipelineEvalFloat (int *,double*,double*,int *) ;
 int cmsPipelineFree (int *,int *) ;
 int cmsPipelineInsertStage (int *,int *,int ,int ) ;
 int cmsPlugin (int *,int *) ;
 scalar_t__ cmsReadTag (int *,int *,int ) ;
 int cmsSaveProfileToMem (int *,int *,char*,int*) ;
 int cmsSetLogErrorHandler (int *,int *) ;
 int cmsSigDToB3Tag ;
 int cmsWriteTag (int *,int *,int ,int *) ;
 int free (char*) ;
 scalar_t__ malloc (int) ;

cmsInt32Number CheckMPEPlugin(void)
{
    cmsContext ctx = ((void*)0);
    cmsContext cpy = ((void*)0);
    cmsHPROFILE h = ((void*)0);
    cmsUInt32Number myTag = 1234;
    cmsUInt32Number rc = 0;
    char* data = ((void*)0);
    cmsUInt32Number clen = 0;
    cmsFloat32Number In[3], Out[3];
    cmsPipeline* pipe;

    ctx = WatchDogContext(((void*)0));
    cmsPlugin(ctx, &MPEPluginSample);

    cpy = DupContext(ctx, ((void*)0));

    h = cmsCreateProfilePlaceholder(cpy);
    if (h == ((void*)0)) {
        Fail("Create placeholder failed");
        goto Error;
    }

    pipe = cmsPipelineAlloc(cpy, 3, 3);
    cmsPipelineInsertStage(cpy, pipe, cmsAT_BEGIN, StageAllocNegate(cpy));


    In[0] = 0.3f; In[1] = 0.2f; In[2] = 0.9f;
    cmsPipelineEvalFloat(cpy, In, Out, pipe);

    rc = (IsGoodVal("0", Out[0], 1.0-In[0], 0.001) &&
           IsGoodVal("1", Out[1], 1.0-In[1], 0.001) &&
           IsGoodVal("2", Out[2], 1.0-In[2], 0.001));

    if (!rc) {
        Fail("Pipeline failed");
        goto Error;
    }

    if (!cmsWriteTag(cpy, h, cmsSigDToB3Tag, pipe)) {
        Fail("Plug-in failed");
        goto Error;
    }


    cmsPipelineFree(cpy, pipe);

    rc = cmsSaveProfileToMem(cpy, h, ((void*)0), &clen);
    if (!rc) {
        Fail("Fetch mem size failed");
        goto Error;
    }


    data = (char*) malloc(clen);
    if (data == ((void*)0)) {
        Fail("malloc failed ?!?");
        goto Error;
    }


    rc = cmsSaveProfileToMem(cpy, h, data, &clen);
    if (!rc) {
        Fail("Save to mem failed");
        goto Error;
    }

    cmsCloseProfile(cpy, h);

    cmsSetLogErrorHandler(cpy, ((void*)0));
    h = cmsOpenProfileFromMem(cpy, data, clen);
    if (h == ((void*)0)) {
        Fail("Open profile failed");
        goto Error;
    }

    pipe = (cmsPipeline*) cmsReadTag(cpy, h, cmsSigDToB3Tag);
    if (pipe != ((void*)0)) {


        Fail("read tag/context switching failed");
        goto Error;
    }

    cmsCloseProfile(cpy, h);

    ResetFatalError(cpy);

    h = cmsOpenProfileFromMem(cpy, data, clen);
    if (h == ((void*)0)) {
        Fail("Open profile from mem failed");
        goto Error;
    }


    free(data); data = ((void*)0);

    pipe = (cmsPipeline*) cmsReadTag(cpy, h, cmsSigDToB3Tag);
    if (pipe == ((void*)0)) {
        Fail("Read tag/conext switching failed (2)");
        return 0;
    }


    In[0] = 0.3f; In[1] = 0.2f; In[2] = 0.9f;
    cmsPipelineEvalFloat(cpy, In, Out, pipe);

     rc = (IsGoodVal("0", Out[0], 1.0-In[0], 0.001) &&
           IsGoodVal("1", Out[1], 1.0-In[1], 0.001) &&
           IsGoodVal("2", Out[2], 1.0-In[2], 0.001));

    cmsCloseProfile(cpy, h);
    cmsDeleteContext(ctx);
    cmsDeleteContext(cpy);
    return rc;

Error:

    if (h != ((void*)0)) cmsCloseProfile(ctx, h);
    if (ctx != ((void*)0)) cmsDeleteContext(ctx);
    if (cpy != ((void*)0)) cmsDeleteContext(cpy);
    if (data) free(data);

    return 0;
}
