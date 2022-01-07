
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
 int INTENT_PERCEPTUAL ;
 int OptimizationPluginSample ;
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

cmsInt32Number CheckOptimizationPlugin(void)
{
    cmsContext ctx = WatchDogContext(((void*)0));
    cmsContext cpy;
    cmsHTRANSFORM xform;
    cmsUInt8Number In[]= { 10, 20, 30, 40 };
    cmsUInt8Number Out[4];
    cmsToneCurve* Linear[1];
    cmsHPROFILE h;
    int i;

    cmsPlugin(ctx, &OptimizationPluginSample);

    cpy = DupContext(ctx, ((void*)0));

    Linear[0] = cmsBuildGamma(cpy, 1.0);
    h = cmsCreateLinearizationDeviceLink(cpy, cmsSigGrayData, Linear);
    cmsFreeToneCurve(cpy, Linear[0]);

    xform = cmsCreateTransform(cpy, h, TYPE_GRAY_8, h, TYPE_GRAY_8, INTENT_PERCEPTUAL, 0);
    cmsCloseProfile(cpy, h);

    cmsDoTransform(cpy, xform, In, Out, 4);

    cmsDeleteTransform(cpy, xform);
    cmsDeleteContext(ctx);
    cmsDeleteContext(cpy);

    for (i=0; i < 4; i++)
        if (In[i] != Out[i]) return 0;

    return 1;
}
