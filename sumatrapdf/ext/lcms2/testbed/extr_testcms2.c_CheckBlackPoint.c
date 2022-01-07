
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsInt32Number ;
typedef int cmsHPROFILE ;
typedef int cmsCIEXYZ ;
typedef int cmsCIELab ;


 int DbgThread () ;
 int INTENT_PERCEPTUAL ;
 int INTENT_RELATIVE_COLORIMETRIC ;
 int cmsCloseProfile (int ,int ) ;
 int cmsDetectDestinationBlackPoint (int ,int *,int ,int ,int ) ;
 int cmsOpenProfileFromFile (int ,char*,char*) ;
 int cmsXYZ2Lab (int ,int *,int *,int *) ;

__attribute__((used)) static
cmsInt32Number CheckBlackPoint(void)
{
    cmsHPROFILE hProfile;
    cmsCIEXYZ Black;
    cmsCIELab Lab;

    hProfile = cmsOpenProfileFromFile(DbgThread(), "test5.icc", "r");
    cmsDetectDestinationBlackPoint(DbgThread(), &Black, hProfile, INTENT_RELATIVE_COLORIMETRIC, 0);
    cmsCloseProfile(DbgThread(), hProfile);


    hProfile = cmsOpenProfileFromFile(DbgThread(), "test1.icc", "r");
    cmsDetectDestinationBlackPoint(DbgThread(), &Black, hProfile, INTENT_RELATIVE_COLORIMETRIC, 0);
    cmsXYZ2Lab(DbgThread(), ((void*)0), &Lab, &Black);
    cmsCloseProfile(DbgThread(), hProfile);

    hProfile = cmsOpenProfileFromFile(DbgThread(), "lcms2cmyk.icc", "r");
    cmsDetectDestinationBlackPoint(DbgThread(), &Black, hProfile, INTENT_RELATIVE_COLORIMETRIC, 0);
    cmsXYZ2Lab(DbgThread(), ((void*)0), &Lab, &Black);
    cmsCloseProfile(DbgThread(), hProfile);

    hProfile = cmsOpenProfileFromFile(DbgThread(), "test2.icc", "r");
    cmsDetectDestinationBlackPoint(DbgThread(), &Black, hProfile, INTENT_RELATIVE_COLORIMETRIC, 0);
    cmsXYZ2Lab(DbgThread(), ((void*)0), &Lab, &Black);
    cmsCloseProfile(DbgThread(), hProfile);

    hProfile = cmsOpenProfileFromFile(DbgThread(), "test1.icc", "r");
    cmsDetectDestinationBlackPoint(DbgThread(), &Black, hProfile, INTENT_PERCEPTUAL, 0);
    cmsXYZ2Lab(DbgThread(), ((void*)0), &Lab, &Black);
    cmsCloseProfile(DbgThread(), hProfile);

    return 1;
}
