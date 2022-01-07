
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsInt32Number ;
typedef int cmsHTRANSFORM ;
typedef int cmsHPROFILE ;


 int CheckFloatlinearXFORM (int ,int) ;
 int Create_AboveRGB () ;
 int DbgThread () ;
 int INTENT_RELATIVE_COLORIMETRIC ;
 int TYPE_RGB_FLT ;
 int cmsCloseProfile (int ,int ) ;
 int cmsCreateProofingTransform (int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int cmsDeleteTransform (int ,int ) ;
 int cmsFLAGS_SOFTPROOFING ;

__attribute__((used)) static
cmsInt32Number CheckProofingXFORMFloat(void)
{
    cmsHPROFILE hAbove;
    cmsHTRANSFORM xform;
    cmsInt32Number rc;

    hAbove = Create_AboveRGB();
    xform = cmsCreateProofingTransform(DbgThread(), hAbove, TYPE_RGB_FLT, hAbove, TYPE_RGB_FLT, hAbove,
                                INTENT_RELATIVE_COLORIMETRIC, INTENT_RELATIVE_COLORIMETRIC, cmsFLAGS_SOFTPROOFING);
    cmsCloseProfile(DbgThread(), hAbove);
    rc = CheckFloatlinearXFORM(xform, 3);
    cmsDeleteTransform(DbgThread(), xform);
    return rc;
}
