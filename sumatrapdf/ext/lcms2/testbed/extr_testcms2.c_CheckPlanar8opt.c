
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsHTRANSFORM ;
typedef int cmsHPROFILE ;


 int Create_AboveRGB () ;
 int DbgThread () ;
 int INTENT_PERCEPTUAL ;
 int TYPE_RGB_8_PLANAR ;
 int cmsCloseProfile (int ,int ) ;
 int cmsCreateTransform (int ,int ,int ,int ,int ,int ,int ) ;
 int cmsCreate_sRGBProfile (int ) ;
 int cmsDeleteTransform (int ,int ) ;

__attribute__((used)) static
int CheckPlanar8opt(void)
{
    cmsHPROFILE aboveRGB = Create_AboveRGB();
    cmsHPROFILE sRGB = cmsCreate_sRGBProfile(DbgThread());

    cmsHTRANSFORM transform = cmsCreateTransform(DbgThread(),
        sRGB, TYPE_RGB_8_PLANAR,
        aboveRGB, TYPE_RGB_8_PLANAR,
        INTENT_PERCEPTUAL, 0);

    cmsDeleteTransform(DbgThread(), transform);
    cmsCloseProfile(DbgThread(), aboveRGB);
    cmsCloseProfile(DbgThread(), sRGB);

    return 1;
}
