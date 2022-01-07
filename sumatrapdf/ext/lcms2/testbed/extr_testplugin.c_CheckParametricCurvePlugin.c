
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsToneCurve ;
typedef int cmsInt32Number ;
typedef double cmsFloat64Number ;
typedef int * cmsContext ;


 int CurvePluginSample ;
 int CurvePluginSample2 ;
 int * DupContext (int *,int *) ;
 int IsGoodVal (char*,int ,double,double) ;
 double M_PI ;
 int TYPE_COS ;
 int TYPE_SIN ;
 int TYPE_TAN ;
 int * WatchDogContext (int *) ;
 double acos (double) ;
 double asin (double) ;
 int * cmsBuildParametricToneCurve (int *,int ,double*) ;
 int cmsDeleteContext (int *) ;
 int cmsEvalToneCurveFloat (int *,int *,float) ;
 int cmsFreeToneCurve (int *,int *) ;
 int cmsPlugin (int *,int *) ;
 int * cmsReverseToneCurve (int *,int *) ;
 double cos (double) ;
 double sin (double) ;
 double tan (double) ;

cmsInt32Number CheckParametricCurvePlugin(void)
{
    cmsContext ctx = ((void*)0);
    cmsContext cpy = ((void*)0);
    cmsToneCurve* sinus;
    cmsToneCurve* cosinus;
    cmsToneCurve* tangent;
    cmsToneCurve* reverse_sinus;
    cmsToneCurve* reverse_cosinus;
    cmsFloat64Number scale = 1.0;

    ctx = WatchDogContext(((void*)0));

    cmsPlugin(ctx, &CurvePluginSample);

    cpy = DupContext(ctx, ((void*)0));

    cmsPlugin(cpy, &CurvePluginSample2);

    sinus = cmsBuildParametricToneCurve(cpy, TYPE_SIN, &scale);
    cosinus = cmsBuildParametricToneCurve(cpy, TYPE_COS, &scale);
    tangent = cmsBuildParametricToneCurve(cpy, TYPE_TAN, &scale);
    reverse_sinus = cmsReverseToneCurve(cpy, sinus);
    reverse_cosinus = cmsReverseToneCurve(cpy, cosinus);


     if (!IsGoodVal("0.10", cmsEvalToneCurveFloat(cpy, sinus, 0.10f), sin(0.10 * M_PI) , 0.001)) goto Error;
     if (!IsGoodVal("0.60", cmsEvalToneCurveFloat(cpy, sinus, 0.60f), sin(0.60* M_PI), 0.001)) goto Error;
     if (!IsGoodVal("0.90", cmsEvalToneCurveFloat(cpy, sinus, 0.90f), sin(0.90* M_PI), 0.001)) goto Error;

     if (!IsGoodVal("0.10", cmsEvalToneCurveFloat(cpy, cosinus, 0.10f), cos(0.10* M_PI), 0.001)) goto Error;
     if (!IsGoodVal("0.60", cmsEvalToneCurveFloat(cpy, cosinus, 0.60f), cos(0.60* M_PI), 0.001)) goto Error;
     if (!IsGoodVal("0.90", cmsEvalToneCurveFloat(cpy, cosinus, 0.90f), cos(0.90* M_PI), 0.001)) goto Error;

     if (!IsGoodVal("0.10", cmsEvalToneCurveFloat(cpy, tangent, 0.10f), tan(0.10* M_PI), 0.001)) goto Error;
     if (!IsGoodVal("0.60", cmsEvalToneCurveFloat(cpy, tangent, 0.60f), tan(0.60* M_PI), 0.001)) goto Error;
     if (!IsGoodVal("0.90", cmsEvalToneCurveFloat(cpy, tangent, 0.90f), tan(0.90* M_PI), 0.001)) goto Error;


     if (!IsGoodVal("0.10", cmsEvalToneCurveFloat(cpy, reverse_sinus, 0.10f), asin(0.10)/M_PI, 0.001)) goto Error;
     if (!IsGoodVal("0.60", cmsEvalToneCurveFloat(cpy, reverse_sinus, 0.60f), asin(0.60)/M_PI, 0.001)) goto Error;
     if (!IsGoodVal("0.90", cmsEvalToneCurveFloat(cpy, reverse_sinus, 0.90f), asin(0.90)/M_PI, 0.001)) goto Error;

     if (!IsGoodVal("0.10", cmsEvalToneCurveFloat(cpy, reverse_cosinus, 0.10f), acos(0.10)/M_PI, 0.001)) goto Error;
     if (!IsGoodVal("0.60", cmsEvalToneCurveFloat(cpy, reverse_cosinus, 0.60f), acos(0.60)/M_PI, 0.001)) goto Error;
     if (!IsGoodVal("0.90", cmsEvalToneCurveFloat(cpy, reverse_cosinus, 0.90f), acos(0.90)/M_PI, 0.001)) goto Error;

     cmsFreeToneCurve(cpy, sinus);
     cmsFreeToneCurve(cpy, cosinus);
     cmsFreeToneCurve(cpy, tangent);
     cmsFreeToneCurve(cpy, reverse_sinus);
     cmsFreeToneCurve(cpy, reverse_cosinus);

     cmsDeleteContext(ctx);
     cmsDeleteContext(cpy);

     return 1;

Error:

     cmsFreeToneCurve(cpy, sinus);
     cmsFreeToneCurve(cpy, reverse_sinus);
     cmsFreeToneCurve(cpy, cosinus);
     cmsFreeToneCurve(cpy, reverse_cosinus);

     if (ctx != ((void*)0)) cmsDeleteContext(ctx);
     if (cpy != ((void*)0)) cmsDeleteContext(cpy);
     return 0;
}
