
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ cmsUInt32Number ;
typedef int cmsPipeline ;
typedef int cmsContext ;
typedef int cmsBool ;
typedef int _cmsTransformFn ;
typedef int _cmsFreeUserDataFn ;


 int FALSE ;
 int TRUE ;
 scalar_t__ TYPE_GRAY_8 ;
 int TrancendentalTransform ;

cmsBool TransformFactory(cmsContext ContextID, _cmsTransformFn* xformPtr,
                          void** UserData,
                           _cmsFreeUserDataFn* FreePrivateDataFn,
                           cmsPipeline** Lut,
                           cmsUInt32Number* InputFormat,
                           cmsUInt32Number* OutputFormat,
                           cmsUInt32Number* dwFlags)

{
    if (*OutputFormat == TYPE_GRAY_8)
    {

        *xformPtr = TrancendentalTransform;
        return TRUE;
    }

    return FALSE;
}
