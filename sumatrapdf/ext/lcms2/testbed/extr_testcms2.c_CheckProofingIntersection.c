
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * cmsHTRANSFORM ;
typedef int cmsHPROFILE ;


 int Create_AboveRGB () ;
 int DbgThread () ;
 int INTENT_ABSOLUTE_COLORIMETRIC ;
 int TYPE_GRAY_FLT ;
 int TYPE_RGB_FLT ;
 int cmsCloseProfile (int ,int ) ;
 int cmsCreateNULLProfile (int ) ;
 int * cmsCreateProofingTransform (int ,int ,int ,int ,int ,int ,int ,int ,int) ;
 int cmsCreate_sRGBProfile (int ) ;
 int cmsDeleteTransform (int ,int *) ;
 int cmsFLAGS_GAMUTCHECK ;
 int cmsFLAGS_SOFTPROOFING ;

__attribute__((used)) static
int CheckProofingIntersection(void)
{
    cmsHPROFILE profile_null, hnd1, hnd2;
    cmsHTRANSFORM transform;

    hnd1 = cmsCreate_sRGBProfile(DbgThread());
    hnd2 = Create_AboveRGB();

    profile_null = cmsCreateNULLProfile(DbgThread());
    transform = cmsCreateProofingTransform(DbgThread(),
        hnd1,
        TYPE_RGB_FLT,
        profile_null,
        TYPE_GRAY_FLT,
        hnd2,
        INTENT_ABSOLUTE_COLORIMETRIC,
        INTENT_ABSOLUTE_COLORIMETRIC,
        cmsFLAGS_GAMUTCHECK |
        cmsFLAGS_SOFTPROOFING);

    cmsCloseProfile(DbgThread(), hnd1);
    cmsCloseProfile(DbgThread(), hnd2);
    cmsCloseProfile(DbgThread(), profile_null);


    if (transform == ((void*)0)) return 0;

    cmsDeleteTransform(DbgThread(), transform);
    return 1;
}
