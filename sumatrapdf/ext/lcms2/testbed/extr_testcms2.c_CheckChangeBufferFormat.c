
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsInt32Number ;
typedef int * cmsHTRANSFORM ;
typedef int cmsHPROFILE ;


 int CheckOneRGB (int *,int,int,int,int,int,int) ;
 int CheckOneRGB_double (int *,double,double,int,double,double,int) ;
 int DbgThread () ;
 int INTENT_PERCEPTUAL ;
 int TYPE_BGR_16 ;
 int TYPE_RGB_16 ;
 int TYPE_RGB_DBL ;
 int * cmsCloneTransformChangingFormats (int ,int *,int ,int ) ;
 int cmsCloseProfile (int ,int ) ;
 int * cmsCreateTransform (int ,int ,int ,int ,int ,int ,int ) ;
 int cmsCreate_sRGBProfile (int ) ;
 int cmsDeleteTransform (int ,int *) ;

__attribute__((used)) static
cmsInt32Number CheckChangeBufferFormat(void)
{
    cmsHPROFILE hsRGB = cmsCreate_sRGBProfile(DbgThread());
    cmsHTRANSFORM xform;
    cmsHTRANSFORM xform2;


    xform = cmsCreateTransform(DbgThread(), hsRGB, TYPE_RGB_16, hsRGB, TYPE_RGB_16, INTENT_PERCEPTUAL, 0);
    cmsCloseProfile(DbgThread(), hsRGB);
    if (xform == ((void*)0)) return 0;


    if (!CheckOneRGB(xform, 0, 0, 0, 0, 0, 0)) return 0;
    if (!CheckOneRGB(xform, 120, 0, 0, 120, 0, 0)) return 0;
    if (!CheckOneRGB(xform, 0, 222, 255, 0, 222, 255)) return 0;

    xform2 = cmsCloneTransformChangingFormats(DbgThread(), xform, TYPE_BGR_16, TYPE_RGB_16);
    if (!xform2) return 0;

    if (!CheckOneRGB(xform2, 0, 0, 123, 123, 0, 0)) return 0;
    if (!CheckOneRGB(xform2, 154, 234, 0, 0, 234, 154)) return 0;

    cmsDeleteTransform(DbgThread(),xform2);
    xform2 = cmsCloneTransformChangingFormats(DbgThread(), xform, TYPE_RGB_DBL, TYPE_RGB_DBL);
    if (!xform2) return 0;

    if (!CheckOneRGB_double(xform2, 0.20, 0, 0, 0.20, 0, 0)) return 0;
    if (!CheckOneRGB_double(xform2, 0, 0.9, 1, 0, 0.9, 1)) return 0;

    cmsDeleteTransform(DbgThread(),xform2);
    cmsDeleteTransform(DbgThread(),xform);

return 1;
}
