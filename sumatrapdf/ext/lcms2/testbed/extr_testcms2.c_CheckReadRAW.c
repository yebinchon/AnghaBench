
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsInt32Number ;
typedef int * cmsHPROFILE ;


 int DbgThread () ;
 int SubTest (char*) ;
 int cmsCloseProfile (int ,int *) ;
 int * cmsCreate_sRGBProfile (int ) ;
 int * cmsOpenProfileFromFile (int ,char*,char*) ;
 int cmsReadRawTag (int ,int *,int ,char*,int) ;
 int cmsSigGamutTag ;
 int cmsSigGreenColorantTag ;

__attribute__((used)) static
cmsInt32Number CheckReadRAW(void)
{
    cmsInt32Number tag_size, tag_size1;
    char buffer[4];
    cmsHPROFILE hProfile;


    SubTest("RAW read on on-disk");
    hProfile = cmsOpenProfileFromFile(DbgThread(), "test1.icc", "r");

    if (hProfile == ((void*)0))
        return 0;

    tag_size = cmsReadRawTag(DbgThread(), hProfile, cmsSigGamutTag, buffer, 4);
    tag_size1 = cmsReadRawTag(DbgThread(), hProfile, cmsSigGamutTag, ((void*)0), 0);

    cmsCloseProfile(DbgThread(), hProfile);

    if (tag_size != 4)
        return 0;

    if (tag_size1 != 37009)
        return 0;

    SubTest("RAW read on in-memory created profiles");
    hProfile = cmsCreate_sRGBProfile(DbgThread());
    tag_size = cmsReadRawTag(DbgThread(), hProfile, cmsSigGreenColorantTag, buffer, 4);
    tag_size1 = cmsReadRawTag(DbgThread(), hProfile, cmsSigGreenColorantTag, ((void*)0), 0);

    cmsCloseProfile(DbgThread(), hProfile);

    if (tag_size != 4)
        return 0;
    if (tag_size1 != 20)
        return 0;

    return 1;
}
