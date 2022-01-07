
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt32Number ;
typedef int cmsInt32Number ;
typedef int * cmsHPROFILE ;
typedef int * cmsContext ;


 int * DupContext (int *,int *) ;
 int Fail (char*) ;
 int ResetFatalError (int *) ;
 int SigInt ;
 int TagTypePluginSample ;
 int * WatchDogContext (int *) ;
 int cmsCloseProfile (int *,int *) ;
 int * cmsCreateProfilePlaceholder (int *) ;
 int cmsDeleteContext (int *) ;
 int * cmsOpenProfileFromMem (int *,char*,int) ;
 int cmsPlugin (int *,int *) ;
 scalar_t__ cmsReadTag (int *,int *,int ) ;
 int cmsSaveProfileToMem (int *,int *,char*,int*) ;
 int cmsSetLogErrorHandler (int *,int *) ;
 int cmsWriteTag (int *,int *,int ,int*) ;
 int free (char*) ;
 scalar_t__ malloc (int) ;

cmsInt32Number CheckTagTypePlugin(void)
{
    cmsContext ctx = ((void*)0);
    cmsContext cpy = ((void*)0);
    cmsHPROFILE h = ((void*)0);
    cmsUInt32Number myTag = 1234;
    cmsUInt32Number rc = 0;
    char* data = ((void*)0);
    cmsUInt32Number *ptr = ((void*)0);
    cmsUInt32Number clen = 0;

    ctx = WatchDogContext(((void*)0));
    cmsPlugin(ctx, &TagTypePluginSample);

    cpy = DupContext(ctx, ((void*)0));

    h = cmsCreateProfilePlaceholder(cpy);
    if (h == ((void*)0)) {
        Fail("Create placeholder failed");
        goto Error;
    }


    if (!cmsWriteTag(cpy, h, SigInt, &myTag)) {
        Fail("Plug-in failed");
        goto Error;
    }

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

    ptr = (cmsUInt32Number*) cmsReadTag(cpy, h, SigInt);
    if (ptr != ((void*)0)) {

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

    ptr = (cmsUInt32Number*) cmsReadTag(cpy, h, SigInt);
    if (ptr == ((void*)0)) {
        Fail("Read tag/conext switching failed (2)");
        return 0;
    }

    rc = (*ptr == 1234);

    cmsCloseProfile(cpy, h);
    cmsDeleteContext(ctx);
    cmsDeleteContext(cpy);

    return rc;

Error:

    if (h != ((void*)0)) cmsCloseProfile(cpy, h);
    if (ctx != ((void*)0)) cmsDeleteContext(ctx);
    if (cpy != ((void*)0)) cmsDeleteContext(cpy);
    if (data) free(data);

    return 0;
}
