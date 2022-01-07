
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsInt32Number ;
typedef int cmsHTRANSFORM ;
typedef int cmsHPROFILE ;


 int Check16linearXFORM (int ,int) ;
 int Create_AboveRGB () ;
 int DbgThread () ;
 int INTENT_RELATIVE_COLORIMETRIC ;
 int TYPE_RGB_16 ;
 int cmsCloseProfile (int ,int ) ;
 int cmsCreateProofingTransform (int ,int ,int ,int ,int ,int ,int ,int ,int) ;
 int cmsDeleteTransform (int ,int ) ;
 int cmsFLAGS_NOCACHE ;
 int cmsFLAGS_SOFTPROOFING ;

__attribute__((used)) static
cmsInt32Number CheckProofingXFORM16(void)
{
    cmsHPROFILE hAbove;
    cmsHTRANSFORM xform;
    cmsInt32Number rc;

    hAbove = Create_AboveRGB();
    xform = cmsCreateProofingTransform(DbgThread(), hAbove, TYPE_RGB_16, hAbove, TYPE_RGB_16, hAbove,
                                INTENT_RELATIVE_COLORIMETRIC, INTENT_RELATIVE_COLORIMETRIC, cmsFLAGS_SOFTPROOFING|cmsFLAGS_NOCACHE);
    cmsCloseProfile(DbgThread(), hAbove);
    rc = Check16linearXFORM(xform, 3);
    cmsDeleteTransform(DbgThread(), xform);
    return rc;
}
