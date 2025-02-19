
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsToneCurve ;
typedef int * cmsHPROFILE ;


 int DbgThread () ;
 int * cmsBuildGamma (int ,double) ;
 int * cmsCreateGrayProfile (int ,int ,int *) ;
 int cmsD50_xyY (int ) ;
 int cmsFreeToneCurve (int ,int *) ;

__attribute__((used)) static
cmsHPROFILE Create_Gray30(void)
{
    cmsHPROFILE hProfile;
    cmsToneCurve* Curve = cmsBuildGamma(DbgThread(), 3.0);
    if (Curve == ((void*)0)) return ((void*)0);

    hProfile = cmsCreateGrayProfile(DbgThread(), cmsD50_xyY(DbgThread()), Curve);
    cmsFreeToneCurve(DbgThread(), Curve);

    return hProfile;
}
