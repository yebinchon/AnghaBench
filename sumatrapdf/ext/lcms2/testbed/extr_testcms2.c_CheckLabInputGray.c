
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsInt32Number ;
typedef int cmsHTRANSFORM ;
typedef int * cmsHPROFILE ;


 int CheckGray (int ,int,double) ;
 int * Create_GrayLab () ;
 int DbgThread () ;
 int INTENT_RELATIVE_COLORIMETRIC ;
 int TYPE_GRAY_8 ;
 int TYPE_Lab_DBL ;
 int cmsCloseProfile (int ,int *) ;
 int * cmsCreateLab4Profile (int ,int *) ;
 int cmsCreateTransform (int ,int *,int ,int *,int ,int ,int ) ;
 int cmsDeleteTransform (int ,int ) ;

__attribute__((used)) static
cmsInt32Number CheckLabInputGray(void)
{
    cmsHPROFILE hGray = Create_GrayLab();
    cmsHPROFILE hLab = cmsCreateLab4Profile(DbgThread(), ((void*)0));
    cmsHTRANSFORM xform;

    if (hGray == ((void*)0) || hLab == ((void*)0)) return 0;

    xform = cmsCreateTransform(DbgThread(), hGray, TYPE_GRAY_8, hLab, TYPE_Lab_DBL, INTENT_RELATIVE_COLORIMETRIC, 0);
    cmsCloseProfile(DbgThread(), hGray); cmsCloseProfile(DbgThread(), hLab);

    if (!CheckGray(xform, 0, 0)) return 0;
    if (!CheckGray(xform, 125, 49.019)) return 0;
    if (!CheckGray(xform, 200, 78.431)) return 0;
    if (!CheckGray(xform, 255, 100.0)) return 0;

    cmsDeleteTransform(DbgThread(), xform);
    return 1;
}
