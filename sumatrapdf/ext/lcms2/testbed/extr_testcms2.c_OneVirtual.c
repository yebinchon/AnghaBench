
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsInt32Number ;
typedef int * cmsHPROFILE ;


 int DbgThread () ;
 int SubTest (char const*) ;
 int cmsCloseProfile (int ,int *) ;
 int * cmsOpenProfileFromFile (int ,char const*,char*) ;
 int cmsSaveProfileToFile (int ,int *,char const*) ;

__attribute__((used)) static
cmsInt32Number OneVirtual(cmsHPROFILE h, const char* SubTestTxt, const char* FileName)
{
    SubTest(SubTestTxt);
    if (h == ((void*)0)) return 0;

    if (!cmsSaveProfileToFile(DbgThread(), h, FileName)) return 0;
    cmsCloseProfile(DbgThread(), h);

    h = cmsOpenProfileFromFile(DbgThread(), FileName, "r");
    if (h == ((void*)0)) return 0;

    cmsCloseProfile(DbgThread(), h);
    return 1;
}
