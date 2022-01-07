
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt8Number ;
typedef int cmsToneCurve ;
typedef int cmsInt32Number ;
typedef int cmsHTRANSFORM ;
typedef int cmsHPROFILE ;
typedef int cmsContext ;


 int DupContext (int ,int *) ;
 int INTENT_DECEPTIVE ;
 int IntentPluginSample ;
 int TYPE_GRAY_8 ;
 int WatchDogContext (int *) ;
 int * cmsBuildGamma (int ,double) ;
 int cmsCloseProfile (int ,int ) ;
 int cmsCreateLinearizationDeviceLink (int ,int ,int **) ;
 int cmsCreateTransform (int ,int ,int ,int ,int ,int ,int ) ;
 int cmsDeleteContext (int ) ;
 int cmsDeleteTransform (int ,int ) ;
 int cmsDoTransform (int ,int ,int*,int*,int) ;
 int cmsFreeToneCurve (int ,int *) ;
 int cmsPlugin (int ,int *) ;
 int cmsSigGrayData ;

cmsInt32Number CheckIntentPlugin(void)
{
    cmsContext ctx = WatchDogContext(((void*)0));
    cmsContext cpy;
    cmsHTRANSFORM xform;
    cmsHPROFILE h1, h2;
    cmsToneCurve* Linear1;
    cmsToneCurve* Linear2;
    cmsUInt8Number In[]= { 10, 20, 30, 40 };
    cmsUInt8Number Out[4];
    int i;

    cmsPlugin(ctx, &IntentPluginSample);

    cpy = DupContext(ctx, ((void*)0));

    Linear1 = cmsBuildGamma(cpy, 3.0);
    Linear2 = cmsBuildGamma(cpy, 0.1);
    h1 = cmsCreateLinearizationDeviceLink(cpy, cmsSigGrayData, &Linear1);
    h2 = cmsCreateLinearizationDeviceLink(cpy, cmsSigGrayData, &Linear2);

    cmsFreeToneCurve(cpy, Linear1);
    cmsFreeToneCurve(cpy, Linear2);

    xform = cmsCreateTransform(cpy, h1, TYPE_GRAY_8, h2, TYPE_GRAY_8, INTENT_DECEPTIVE, 0);
    cmsCloseProfile(cpy,h1); cmsCloseProfile(cpy, h2);

    cmsDoTransform(cpy, xform, In, Out, 4);

    cmsDeleteTransform(cpy, xform);
    cmsDeleteContext(cpy);
    cmsDeleteContext(ctx);

    for (i=0; i < 4; i++)
        if (Out[i] != In[i]) return 0;

    return 1;
}
