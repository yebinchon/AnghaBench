
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsInt32Number ;
typedef int * cmsHPROFILE ;


 int DbgThread () ;
 int SimultaneousErrors ;
 int cmsCloseProfile (int ,int *) ;
 int * cmsOpenProfileFromFile (int ,char*,char*) ;
 int * cmsOpenProfileFromMem (int ,char*,int) ;

__attribute__((used)) static
cmsInt32Number CheckBadProfiles(void)
{
    cmsHPROFILE h;

    h = cmsOpenProfileFromFile(DbgThread(), "IDoNotExist.icc", "r");
    if (h != ((void*)0)) {
        cmsCloseProfile(DbgThread(), h);
        return 0;
    }

    h = cmsOpenProfileFromFile(DbgThread(), "IAmIllFormed*.icc", "r");
    if (h != ((void*)0)) {
        cmsCloseProfile(DbgThread(), h);
        return 0;
    }


    h = cmsOpenProfileFromFile(DbgThread(), "", "r");
    if (h != ((void*)0)) {
        cmsCloseProfile(DbgThread(), h);
        return 0;
    }

    h = cmsOpenProfileFromFile(DbgThread(), "..", "r");
    if (h != ((void*)0)) {
        cmsCloseProfile(DbgThread(), h);
        return 0;
    }

    h = cmsOpenProfileFromFile(DbgThread(), "IHaveBadAccessMode.icc", "@");
    if (h != ((void*)0)) {
        cmsCloseProfile(DbgThread(), h);
        return 0;
    }

    h = cmsOpenProfileFromFile(DbgThread(), "bad.icc", "r");
    if (h != ((void*)0)) {
        cmsCloseProfile(DbgThread(), h);
        return 0;
    }

     h = cmsOpenProfileFromFile(DbgThread(), "toosmall.icc", "r");
    if (h != ((void*)0)) {
        cmsCloseProfile(DbgThread(), h);
        return 0;
    }

    h = cmsOpenProfileFromMem(DbgThread(), ((void*)0), 3);
    if (h != ((void*)0)) {
        cmsCloseProfile(DbgThread(), h);
        return 0;
    }

    h = cmsOpenProfileFromMem(DbgThread(), "123", 3);
    if (h != ((void*)0)) {
        cmsCloseProfile(DbgThread(), h);
        return 0;
    }

    if (SimultaneousErrors != 9) return 0;

    return 1;
}
