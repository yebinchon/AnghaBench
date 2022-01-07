
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
 int cmsCreateTransform (int ,int ,int ,int ,int ,int ,int ) ;
 int cmsCreate_sRGBProfile (int ) ;
 int cmsDeleteTransform (int ,int ) ;

__attribute__((used)) static
cmsInt32Number CheckMatrixShaperXFORM16(void)
{
    cmsHPROFILE hAbove, hSRGB;
    cmsHTRANSFORM xform;
    cmsInt32Number rc1, rc2;

    hAbove = Create_AboveRGB();
    xform = cmsCreateTransform(DbgThread(), hAbove, TYPE_RGB_16, hAbove, TYPE_RGB_16, INTENT_RELATIVE_COLORIMETRIC, 0);
    cmsCloseProfile(DbgThread(), hAbove);

    rc1 = Check16linearXFORM(xform, 3);
    cmsDeleteTransform(DbgThread(), xform);

    hSRGB = cmsCreate_sRGBProfile(DbgThread());
    xform = cmsCreateTransform(DbgThread(), hSRGB, TYPE_RGB_16, hSRGB, TYPE_RGB_16, INTENT_RELATIVE_COLORIMETRIC, 0);
    cmsCloseProfile(DbgThread(), hSRGB);
    rc2 = Check16linearXFORM(xform, 3);
    cmsDeleteTransform(DbgThread(), xform);

    return rc1 && rc2;

}
