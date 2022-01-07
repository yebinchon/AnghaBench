
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt8Number ;
typedef int cmsInt32Number ;
typedef int cmsHTRANSFORM ;
typedef int * cmsHPROFILE ;


 int CheckOutGray (int ,int,int) ;
 int * Create_GrayLab () ;
 int DbgThread () ;
 int INTENT_RELATIVE_COLORIMETRIC ;
 int TYPE_GRAY_8 ;
 int TYPE_Lab_DBL ;
 int cmsCloseProfile (int ,int *) ;
 int * cmsCreateLab4Profile (int ,int *) ;
 int cmsCreateTransform (int ,int *,int ,int *,int ,int ,int ) ;
 int cmsDeleteTransform (int ,int ) ;
 scalar_t__ floor (int) ;

__attribute__((used)) static
cmsInt32Number CheckLabOutputGray(void)
{
    cmsHPROFILE hGray = Create_GrayLab();
    cmsHPROFILE hLab = cmsCreateLab4Profile(DbgThread(), ((void*)0));
    cmsHTRANSFORM xform;
    cmsInt32Number i;

    if (hGray == ((void*)0) || hLab == ((void*)0)) return 0;

    xform = cmsCreateTransform(DbgThread(), hLab, TYPE_Lab_DBL, hGray, TYPE_GRAY_8, INTENT_RELATIVE_COLORIMETRIC, 0);
    cmsCloseProfile(DbgThread(), hGray); cmsCloseProfile(DbgThread(), hLab);

    if (!CheckOutGray(xform, 0, 0)) return 0;
    if (!CheckOutGray(xform, 100, 255)) return 0;

    for (i=0; i < 100; i++) {

        cmsUInt8Number g;

        g = (cmsUInt8Number) floor(i * 255.0 / 100.0 + 0.5);

        if (!CheckOutGray(xform, i, g)) return 0;
    }


    cmsDeleteTransform(DbgThread(), xform);
    return 1;
}
