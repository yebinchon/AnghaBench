
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsToneCurve ;
typedef int cmsHPROFILE ;


 int DbgThread () ;
 int * cmsBuildGamma (int ,double) ;
 int cmsCreateLinearizationDeviceLink (int ,int ,int **) ;
 int cmsFreeToneCurve (int ,int *) ;
 int cmsSigRgbData ;

__attribute__((used)) static
cmsHPROFILE CreateCurves(void)
{
    cmsToneCurve* Gamma = cmsBuildGamma(DbgThread(), 1.1);
    cmsToneCurve* Transfer[3];
    cmsHPROFILE h;

    Transfer[0] = Transfer[1] = Transfer[2] = Gamma;
    h = cmsCreateLinearizationDeviceLink(DbgThread(), cmsSigRgbData, Transfer);

    cmsFreeToneCurve(DbgThread(), Gamma);

    return h;
}
