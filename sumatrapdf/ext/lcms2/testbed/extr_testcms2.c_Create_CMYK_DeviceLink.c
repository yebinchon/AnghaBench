
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsToneCurve ;
typedef int * cmsHPROFILE ;


 int DbgThread () ;
 int * cmsBuildGamma (int ,double) ;
 int * cmsCreateLinearizationDeviceLink (int ,int ,int **) ;
 int cmsFreeToneCurve (int ,int *) ;
 int cmsSigCmykData ;

__attribute__((used)) static
cmsHPROFILE Create_CMYK_DeviceLink(void)
{
    cmsHPROFILE hProfile;
    cmsToneCurve* Tab[4];
    cmsToneCurve* Curve = cmsBuildGamma(DbgThread(), 3.0);
    if (Curve == ((void*)0)) return ((void*)0);

    Tab[0] = Curve;
    Tab[1] = Curve;
    Tab[2] = Curve;
    Tab[3] = Curve;

    hProfile = cmsCreateLinearizationDeviceLink(DbgThread(), cmsSigCmykData, Tab);
    if (hProfile == ((void*)0)) return ((void*)0);

    cmsFreeToneCurve(DbgThread(), Curve);

    return hProfile;
}
