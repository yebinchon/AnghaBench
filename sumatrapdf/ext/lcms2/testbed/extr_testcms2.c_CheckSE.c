
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt8Number ;
typedef int cmsUInt16Number ;
typedef int cmsHTRANSFORM ;
typedef int cmsHPROFILE ;


 int Create_AboveRGB () ;
 int DbgThread () ;
 int INTENT_RELATIVE_COLORIMETRIC ;
 int TYPE_RGBA_16_SE ;
 int TYPE_RGBA_8 ;
 int cmsCloseProfile (int ,int ) ;
 int cmsCreateTransform (int ,int ,int ,int ,int ,int ,int ) ;
 int cmsCreate_sRGBProfile (int ) ;
 int cmsDeleteTransform (int ,int ) ;
 int cmsDoTransform (int ,int ,int*,int*,int) ;
 int cmsFLAGS_COPY_ALPHA ;

__attribute__((used)) static
int CheckSE(void)
{
    cmsHPROFILE input_profile = Create_AboveRGB();
    cmsHPROFILE output_profile = cmsCreate_sRGBProfile(DbgThread());

    cmsHTRANSFORM tr = cmsCreateTransform(DbgThread(), input_profile, TYPE_RGBA_8, output_profile, TYPE_RGBA_16_SE, INTENT_RELATIVE_COLORIMETRIC, cmsFLAGS_COPY_ALPHA);

    cmsUInt8Number rgba[4] = { 40, 41, 41, 0xfa };
    cmsUInt16Number out[4];

    cmsDoTransform(DbgThread(), tr, rgba, out, 1);
    cmsCloseProfile(DbgThread(), input_profile);
    cmsCloseProfile(DbgThread(), output_profile);
    cmsDeleteTransform(DbgThread(), tr);

    if (out[0] != 0xf622 || out[1] != 0x7f24 || out[2] != 0x7f24)
        return 0;

    return 1;
}
