
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsToneCurve ;
typedef int cmsInt32Number ;
typedef int cmsHTRANSFORM ;
typedef int * cmsHPROFILE ;


 int Check16linearXFORM (int ,int) ;
 int Check8linearXFORM (int ,int) ;
 int CheckFloatlinearXFORM (int ,int) ;
 int Compare16bitXFORM (int ,int ,int) ;
 int Compare8bitXFORM (int ,int ,int) ;
 int CompareFloatXFORM (int ,int ,int) ;
 int DbgThread () ;
 int INTENT_PERCEPTUAL ;
 int SubTest (char*) ;
 int TYPE_GRAY_16 ;
 int TYPE_GRAY_8 ;
 int TYPE_GRAY_FLT ;
 int * cmsBuildGamma (int ,double) ;
 int cmsCloseProfile (int ,int *) ;
 int * cmsCreateLinearizationDeviceLink (int ,int ,int **) ;
 int cmsCreateTransform (int ,int *,int ,int *,int ,int ,int ) ;
 int cmsDeleteTransform (int ,int ) ;
 int cmsFreeToneCurve (int ,int *) ;
 int cmsSigGrayData ;

__attribute__((used)) static
cmsInt32Number CheckCurvesOnlyTransforms(void)
{

    cmsHTRANSFORM xform1, xform2;
    cmsHPROFILE h1, h2, h3;
    cmsToneCurve* c1, *c2, *c3;
    cmsInt32Number rc = 1;


    c1 = cmsBuildGamma(DbgThread(), 2.2);
    c2 = cmsBuildGamma(DbgThread(), 1/2.2);
    c3 = cmsBuildGamma(DbgThread(), 4.84);

    h1 = cmsCreateLinearizationDeviceLink(DbgThread(), cmsSigGrayData, &c1);
    h2 = cmsCreateLinearizationDeviceLink(DbgThread(), cmsSigGrayData, &c2);
    h3 = cmsCreateLinearizationDeviceLink(DbgThread(), cmsSigGrayData, &c3);

    SubTest("Gray float optimizeable transform");
    xform1 = cmsCreateTransform(DbgThread(), h1, TYPE_GRAY_FLT, h2, TYPE_GRAY_FLT, INTENT_PERCEPTUAL, 0);
    rc &= CheckFloatlinearXFORM(xform1, 1);
    cmsDeleteTransform(DbgThread(), xform1);
    if (rc == 0) goto Error;

    SubTest("Gray 8 optimizeable transform");
    xform1 = cmsCreateTransform(DbgThread(), h1, TYPE_GRAY_8, h2, TYPE_GRAY_8, INTENT_PERCEPTUAL, 0);
    rc &= Check8linearXFORM(xform1, 1);
    cmsDeleteTransform(DbgThread(), xform1);
    if (rc == 0) goto Error;

    SubTest("Gray 16 optimizeable transform");
    xform1 = cmsCreateTransform(DbgThread(), h1, TYPE_GRAY_16, h2, TYPE_GRAY_16, INTENT_PERCEPTUAL, 0);
    rc &= Check16linearXFORM(xform1, 1);
    cmsDeleteTransform(DbgThread(), xform1);
    if (rc == 0) goto Error;

    SubTest("Gray float non-optimizeable transform");
    xform1 = cmsCreateTransform(DbgThread(), h1, TYPE_GRAY_FLT, h1, TYPE_GRAY_FLT, INTENT_PERCEPTUAL, 0);
    xform2 = cmsCreateTransform(DbgThread(), h3, TYPE_GRAY_FLT, ((void*)0), TYPE_GRAY_FLT, INTENT_PERCEPTUAL, 0);

    rc &= CompareFloatXFORM(xform1, xform2, 1);
    cmsDeleteTransform(DbgThread(), xform1);
    cmsDeleteTransform(DbgThread(), xform2);
    if (rc == 0) goto Error;

    SubTest("Gray 8 non-optimizeable transform");
    xform1 = cmsCreateTransform(DbgThread(), h1, TYPE_GRAY_8, h1, TYPE_GRAY_8, INTENT_PERCEPTUAL, 0);
    xform2 = cmsCreateTransform(DbgThread(), h3, TYPE_GRAY_8, ((void*)0), TYPE_GRAY_8, INTENT_PERCEPTUAL, 0);

    rc &= Compare8bitXFORM(xform1, xform2, 1);
    cmsDeleteTransform(DbgThread(), xform1);
    cmsDeleteTransform(DbgThread(), xform2);
    if (rc == 0) goto Error;


    SubTest("Gray 16 non-optimizeable transform");
    xform1 = cmsCreateTransform(DbgThread(), h1, TYPE_GRAY_16, h1, TYPE_GRAY_16, INTENT_PERCEPTUAL, 0);
    xform2 = cmsCreateTransform(DbgThread(), h3, TYPE_GRAY_16, ((void*)0), TYPE_GRAY_16, INTENT_PERCEPTUAL, 0);

    rc &= Compare16bitXFORM(xform1, xform2, 1);
    cmsDeleteTransform(DbgThread(), xform1);
    cmsDeleteTransform(DbgThread(), xform2);
    if (rc == 0) goto Error;

Error:

    cmsCloseProfile(DbgThread(), h1); cmsCloseProfile(DbgThread(), h2); cmsCloseProfile(DbgThread(), h3);
    cmsFreeToneCurve(DbgThread(), c1); cmsFreeToneCurve(DbgThread(), c2); cmsFreeToneCurve(DbgThread(), c3);

    return rc;
}
