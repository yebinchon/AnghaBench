
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsMLU ;
typedef int cmsInt32Number ;
typedef int cmsHPROFILE ;


 int DbgThread () ;
 int FALSE ;
 int TRUE ;
 int cmsCloseProfile (int ,int ) ;
 int cmsMLUgetASCII (int ,int *,char*,char*,char*,int) ;
 int cmsOpenProfileFromFile (int ,char*,char*) ;
 scalar_t__ cmsReadTag (int ,int ,int ) ;
 int cmsSigProfileDescriptionTag ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static
cmsInt32Number CheckMultilocalizedProfile(void)
{
    cmsHPROFILE hProfile;
    cmsMLU *Pt;
    char Buffer[256];

    hProfile = cmsOpenProfileFromFile(DbgThread(), "crayons.icc", "r");

    Pt = (cmsMLU *) cmsReadTag(DbgThread(), hProfile, cmsSigProfileDescriptionTag);
    cmsMLUgetASCII(DbgThread(), Pt, "en", "GB", Buffer, 256);
    if (strcmp(Buffer, "Crayon Colours") != 0) return FALSE;
    cmsMLUgetASCII(DbgThread(), Pt, "en", "US", Buffer, 256);
    if (strcmp(Buffer, "Crayon Colors") != 0) return FALSE;

    cmsCloseProfile(DbgThread(), hProfile);

    return TRUE;
}
