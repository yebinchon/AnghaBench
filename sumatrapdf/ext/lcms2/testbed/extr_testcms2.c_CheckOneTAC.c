
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsInt32Number ;
typedef int cmsHPROFILE ;
typedef scalar_t__ cmsFloat64Number ;


 int CreateFakeCMYK (scalar_t__,int ) ;
 int DbgThread () ;
 int TRUE ;
 int cmsCloseProfile (int ,int ) ;
 scalar_t__ cmsDetectTAC (int ,int ) ;
 int cmsOpenProfileFromFile (int ,char*,char*) ;
 int cmsSaveProfileToFile (int ,int ,char*) ;
 int fabs (scalar_t__) ;
 int remove (char*) ;

__attribute__((used)) static
cmsInt32Number CheckOneTAC(cmsFloat64Number InkLimit)
{
    cmsHPROFILE h;
    cmsFloat64Number d;

    h =CreateFakeCMYK(InkLimit, TRUE);
    cmsSaveProfileToFile(DbgThread(), h, "lcmstac.icc");
    cmsCloseProfile(DbgThread(), h);

    h = cmsOpenProfileFromFile(DbgThread(), "lcmstac.icc", "r");
    d = cmsDetectTAC(DbgThread(), h);
    cmsCloseProfile(DbgThread(), h);

    remove("lcmstac.icc");

    if (fabs(d - InkLimit) > 5) return 0;

    return 1;
}
