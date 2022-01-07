
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt16Number ;
typedef int cmsInt32Number ;
typedef int cmsHTRANSFORM ;
typedef int cmsContext ;


 int DupContext (int ,int *) ;
 int FormattersPluginSample ;
 int FormattersPluginSample2 ;
 int INTENT_PERCEPTUAL ;
 int TYPE_RGB_565 ;
 int WatchDogContext (int *) ;
 int cmsCreateTransform (int ,int *,int ,int *,int ,int ,int ) ;
 int cmsDeleteContext (int ) ;
 int cmsDeleteTransform (int ,int ) ;
 int cmsDoTransform (int ,int ,int*,int*,int) ;
 int cmsFLAGS_NULLTRANSFORM ;
 int cmsPlugin (int ,int *) ;

cmsInt32Number CheckFormattersPlugin(void)
{
    cmsContext ctx = WatchDogContext(((void*)0));
    cmsContext cpy;
    cmsHTRANSFORM xform;
    cmsUInt16Number stream[]= { 0xffffU, 0x1234U, 0x0000U, 0x33ddU };
    cmsUInt16Number result[4];
    int i;

    cmsPlugin(ctx, &FormattersPluginSample);

    cpy = DupContext(ctx, ((void*)0));

    cmsPlugin(cpy, &FormattersPluginSample2);

    xform = cmsCreateTransform(cpy, ((void*)0), TYPE_RGB_565, ((void*)0), TYPE_RGB_565, INTENT_PERCEPTUAL, cmsFLAGS_NULLTRANSFORM);

    cmsDoTransform(cpy, xform, stream, result, 4);

    cmsDeleteTransform(cpy, xform);
    cmsDeleteContext(ctx);
    cmsDeleteContext(cpy);

    for (i=0; i < 4; i++)
        if (stream[i] != result[i]) return 0;

    return 1;
}
