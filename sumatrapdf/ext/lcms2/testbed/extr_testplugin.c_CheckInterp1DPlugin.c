
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsToneCurve ;
typedef int cmsInt32Number ;
typedef float cmsFloat32Number ;
typedef int * cmsContext ;


 int * DupContext (int *,int *) ;
 int Fail (char*) ;
 int InterpPluginSample ;
 int IsGoodVal (char*,int ,double,double) ;
 int * WatchDogContext (int *) ;
 int * cmsBuildTabulatedToneCurveFloat (int *,int,float const*) ;
 int cmsDeleteContext (int *) ;
 int cmsEvalToneCurveFloat (int *,int *,float) ;
 int cmsFreeToneCurve (int *,int *) ;
 int cmsPlugin (int *,int *) ;

cmsInt32Number CheckInterp1DPlugin(void)
{
    cmsToneCurve* Sampled1D = ((void*)0);
    cmsContext ctx = ((void*)0);
    cmsContext cpy = ((void*)0);
    const cmsFloat32Number tab[] = { 0.0f, 0.10f, 0.20f, 0.30f, 0.40f, 0.50f, 0.60f, 0.70f, 0.80f, 0.90f, 1.00f };


    ctx = WatchDogContext(((void*)0));
    if (ctx == ((void*)0)) {
        Fail("Cannot create context");
        goto Error;
    }

    cmsPlugin(ctx, &InterpPluginSample);

    cpy = DupContext(ctx, ((void*)0));
     if (cpy == ((void*)0)) {
        Fail("Cannot create context (2)");
        goto Error;
    }

    Sampled1D = cmsBuildTabulatedToneCurveFloat(cpy, 11, tab);
    if (Sampled1D == ((void*)0)) {
        Fail("Cannot create tone curve (1)");
        goto Error;
    }


    if (!IsGoodVal("0.10", cmsEvalToneCurveFloat(cpy, Sampled1D, 0.10f), 0.10, 0.01)) goto Error;
    if (!IsGoodVal("0.13", cmsEvalToneCurveFloat(cpy, Sampled1D, 0.13f), 0.10, 0.01)) goto Error;
    if (!IsGoodVal("0.55", cmsEvalToneCurveFloat(cpy, Sampled1D, 0.55f), 0.50, 0.01)) goto Error;
    if (!IsGoodVal("0.9999", cmsEvalToneCurveFloat(cpy, Sampled1D, 0.9999f), 0.90, 0.01)) goto Error;

    cmsFreeToneCurve(cpy, Sampled1D);
    cmsDeleteContext(ctx);
    cmsDeleteContext(cpy);


    Sampled1D = cmsBuildTabulatedToneCurveFloat(((void*)0), 11, tab);
    if (Sampled1D == ((void*)0)) {
        Fail("Cannot create tone curve (2)");
        goto Error;
    }


    if (!IsGoodVal("0.10", cmsEvalToneCurveFloat(((void*)0), Sampled1D, 0.10f), 0.10, 0.001)) goto Error;
    if (!IsGoodVal("0.13", cmsEvalToneCurveFloat(((void*)0), Sampled1D, 0.13f), 0.13, 0.001)) goto Error;
    if (!IsGoodVal("0.55", cmsEvalToneCurveFloat(((void*)0), Sampled1D, 0.55f), 0.55, 0.001)) goto Error;
    if (!IsGoodVal("0.9999", cmsEvalToneCurveFloat(((void*)0), Sampled1D, 0.9999f), 0.9999, 0.001)) goto Error;

    cmsFreeToneCurve(((void*)0), Sampled1D);
    return 1;

Error:
    if (ctx != ((void*)0)) cmsDeleteContext(ctx);
     if (cpy != ((void*)0)) cmsDeleteContext(ctx);
    if (Sampled1D != ((void*)0)) cmsFreeToneCurve(((void*)0), Sampled1D);
    return 0;

}
