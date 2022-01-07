
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsInt32Number ;
typedef int * cmsHPROFILE ;


 int * CreateFakeCMYK (int,int ) ;
 int * Create_AboveRGB () ;
 int * Create_CMYK_DeviceLink () ;
 int * Create_Gray22 () ;
 int * Create_Gray30 () ;
 int * Create_GrayLab () ;
 int DbgThread () ;
 int FALSE ;
 int OneVirtual (int *,char*,char*) ;
 int * cmsCreateBCHSWabstractProfile (int ,int,int ,double,int ,int,int,int) ;
 int * cmsCreateInkLimitingDeviceLink (int ,int ,int) ;
 int * cmsCreateLab2Profile (int ,int *) ;
 int * cmsCreateLab4Profile (int ,int *) ;
 int * cmsCreateNULLProfile (int ) ;
 int * cmsCreateXYZProfile (int ) ;
 int * cmsCreate_sRGBProfile (int ) ;
 int cmsSigCmykData ;

__attribute__((used)) static
cmsInt32Number CreateTestProfiles(void)
{
    cmsHPROFILE h;

    h = cmsCreate_sRGBProfile(DbgThread());
    if (!OneVirtual(h, "sRGB profile", "sRGBlcms2.icc")) return 0;



    h = Create_AboveRGB();
    if (!OneVirtual(h, "aRGB profile", "aRGBlcms2.icc")) return 0;



    h = Create_Gray22();
    if (!OneVirtual(h, "Gray profile", "graylcms2.icc")) return 0;



    h = Create_Gray30();
    if (!OneVirtual(h, "Gray 3.0 profile", "gray3lcms2.icc")) return 0;



    h = Create_GrayLab();
    if (!OneVirtual(h, "Gray Lab profile", "glablcms2.icc")) return 0;



    h = Create_CMYK_DeviceLink();
    if (!OneVirtual(h, "Linearization profile", "linlcms2.icc")) return 0;


    h = cmsCreateInkLimitingDeviceLink(DbgThread(), cmsSigCmykData, 150);
    if (h == ((void*)0)) return 0;
    if (!OneVirtual(h, "Ink-limiting profile", "limitlcms2.icc")) return 0;



    h = cmsCreateLab2Profile(DbgThread(), ((void*)0));
    if (!OneVirtual(h, "Lab 2 identity profile", "labv2lcms2.icc")) return 0;



    h = cmsCreateLab4Profile(DbgThread(), ((void*)0));
    if (!OneVirtual(h, "Lab 4 identity profile", "labv4lcms2.icc")) return 0;



    h = cmsCreateXYZProfile(DbgThread());
    if (!OneVirtual(h, "XYZ identity profile", "xyzlcms2.icc")) return 0;



    h = cmsCreateNULLProfile(DbgThread());
    if (!OneVirtual(h, "NULL profile", "nullcms2.icc")) return 0;



    h = cmsCreateBCHSWabstractProfile(DbgThread(), 17, 0, 0, 0, 0, 5000, 6000);
    if (!OneVirtual(h, "BCHS profile", "bchslcms2.icc")) return 0;



    h = CreateFakeCMYK(300, FALSE);
    if (!OneVirtual(h, "Fake CMYK profile", "lcms2cmyk.icc")) return 0;



    h = cmsCreateBCHSWabstractProfile(DbgThread(), 17, 0, 1.2, 0, 3, 5000, 5000);
    if (!OneVirtual(h, "Brightness", "brightness.icc")) return 0;
    return 1;
}
