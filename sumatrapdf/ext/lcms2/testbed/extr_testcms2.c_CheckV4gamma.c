
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt16Number ;
typedef int cmsToneCurve ;
typedef int cmsInt32Number ;
typedef int * cmsHPROFILE ;


 int DbgThread () ;
 int * cmsBuildTabulatedToneCurve16 (int ,int,int*) ;
 int cmsCloseProfile (int ,int *) ;
 int cmsFreeToneCurve (int ,int *) ;
 int * cmsOpenProfileFromFile (int ,char*,char*) ;
 int cmsSetProfileVersion (int ,int *,double) ;
 int cmsSigGrayTRCTag ;
 int cmsWriteTag (int ,int *,int ,int *) ;
 int remove (char*) ;

__attribute__((used)) static
cmsInt32Number CheckV4gamma(void)
{
    cmsHPROFILE h;
    cmsUInt16Number Lin[] = {0, 0xffff};
    cmsToneCurve*g = cmsBuildTabulatedToneCurve16(DbgThread(), 2, Lin);

    h = cmsOpenProfileFromFile(DbgThread(), "v4gamma.icc", "w");
    if (h == ((void*)0)) return 0;


    cmsSetProfileVersion(DbgThread(), h, 4.3);

    if (!cmsWriteTag(DbgThread(), h, cmsSigGrayTRCTag, g)) return 0;
    cmsCloseProfile(DbgThread(), h);

    cmsFreeToneCurve(DbgThread(), g);
    remove("v4gamma.icc");
    return 1;
}
