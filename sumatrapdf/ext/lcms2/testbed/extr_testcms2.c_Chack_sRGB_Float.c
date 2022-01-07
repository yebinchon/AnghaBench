
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsInt32Number ;
typedef int cmsHTRANSFORM ;
typedef int cmsHPROFILE ;


 int CheckOneRGB_f (int ,int,int,int,double,double,double,double) ;
 int DbgThread () ;
 int INTENT_RELATIVE_COLORIMETRIC ;
 scalar_t__ MaxErr ;
 int TYPE_Lab_DBL ;
 int TYPE_RGB_FLT ;
 int TYPE_XYZ_DBL ;
 int cmsCloseProfile (int ,int ) ;
 int cmsCreateLab4Profile (int ,int *) ;
 int cmsCreateTransform (int ,int ,int ,int ,int ,int ,int ) ;
 int cmsCreateXYZProfile (int ) ;
 int cmsCreate_sRGBProfile (int ) ;
 int cmsDeleteTransform (int ,int ) ;

__attribute__((used)) static
cmsInt32Number Chack_sRGB_Float(void)
{
    cmsHPROFILE hsRGB, hXYZ, hLab;
    cmsHTRANSFORM xform1, xform2;
    cmsInt32Number rc;


    hsRGB = cmsCreate_sRGBProfile(DbgThread());
    hXYZ = cmsCreateXYZProfile(DbgThread());
    hLab = cmsCreateLab4Profile(DbgThread(), ((void*)0));

    xform1 = cmsCreateTransform(DbgThread(), hsRGB, TYPE_RGB_FLT, hXYZ, TYPE_XYZ_DBL,
                                INTENT_RELATIVE_COLORIMETRIC, 0);

    xform2 = cmsCreateTransform(DbgThread(), hsRGB, TYPE_RGB_FLT, hLab, TYPE_Lab_DBL,
                                INTENT_RELATIVE_COLORIMETRIC, 0);
    cmsCloseProfile(DbgThread(), hsRGB);
    cmsCloseProfile(DbgThread(), hXYZ);
    cmsCloseProfile(DbgThread(), hLab);

    MaxErr = 0;


    rc = CheckOneRGB_f(xform1, 1, 1, 1, 0.0002927, 0.0003035, 0.000250, 0.0001);
    rc &= CheckOneRGB_f(xform1, 127, 127, 127, 0.2046329, 0.212230, 0.175069, 0.0001);
    rc &= CheckOneRGB_f(xform1, 12, 13, 15, 0.0038364, 0.0039928, 0.003853, 0.0001);
    rc &= CheckOneRGB_f(xform1, 128, 0, 0, 0.0941240, 0.0480256, 0.003005, 0.0001);
    rc &= CheckOneRGB_f(xform1, 190, 25, 210, 0.3204592, 0.1605926, 0.468213, 0.0001);


    rc &= CheckOneRGB_f(xform2, 1, 1, 1, 0.2741748, 0, 0, 0.01);
    rc &= CheckOneRGB_f(xform2, 127, 127, 127, 53.192776, 0, 0, 0.01);
    rc &= CheckOneRGB_f(xform2, 190, 25, 210, 47.052136, 74.565610, -56.883274, 0.01);
    rc &= CheckOneRGB_f(xform2, 128, 0, 0, 26.164701, 48.478171, 39.4384713, 0.01);

    cmsDeleteTransform(DbgThread(), xform1);
    cmsDeleteTransform(DbgThread(), xform2);
    return rc;
}
