
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt16Number ;
typedef int cmsInt32Number ;
typedef int cmsHTRANSFORM ;
typedef int * cmsHPROFILE ;


 int Check16linearXFORM (int ,int) ;
 int CheckFloatlinearXFORM (int ,int) ;
 int * Create_AboveRGB () ;
 int DbgThread () ;
 int Fail (char*) ;
 int INTENT_RELATIVE_COLORIMETRIC ;
 int SubTest (char*) ;
 int TYPE_RGB_16 ;
 int TYPE_RGB_FLT ;
 int cmsCloseProfile (int ,int *) ;
 int cmsCreateProofingTransform (int ,int *,int ,int *,int ,int *,int ,int ,int ) ;
 int * cmsCreate_sRGBProfile (int ) ;
 int cmsDeleteTransform (int ,int ) ;
 int cmsFLAGS_GAMUTCHECK ;
 int cmsSetAlarmCodes (int ,int*) ;

__attribute__((used)) static
cmsInt32Number CheckGamutCheck(void)
{
        cmsHPROFILE hSRGB, hAbove;
        cmsHTRANSFORM xform;
        cmsInt32Number rc;
        cmsUInt16Number Alarm[16] = { 0xDEAD, 0xBABE, 0xFACE };


        cmsSetAlarmCodes(DbgThread(), Alarm);


        hSRGB = cmsCreate_sRGBProfile(DbgThread());
        hAbove = Create_AboveRGB();

        if (hSRGB == ((void*)0) || hAbove == ((void*)0)) return 0;

        SubTest("Gamut check on floating point");


        xform = cmsCreateProofingTransform(DbgThread(), hAbove, TYPE_RGB_FLT, hAbove, TYPE_RGB_FLT, hAbove,
                                INTENT_RELATIVE_COLORIMETRIC, INTENT_RELATIVE_COLORIMETRIC, cmsFLAGS_GAMUTCHECK);


        if (!CheckFloatlinearXFORM(xform, 3)) {
            cmsCloseProfile(DbgThread(), hSRGB);
            cmsCloseProfile(DbgThread(), hAbove);
            cmsDeleteTransform(DbgThread(), xform);
            Fail("Gamut check on same profile failed");
            return 0;
        }

        cmsDeleteTransform(DbgThread(), xform);

        SubTest("Gamut check on 16 bits");

        xform = cmsCreateProofingTransform(DbgThread(), hAbove, TYPE_RGB_16, hAbove, TYPE_RGB_16, hSRGB,
                                INTENT_RELATIVE_COLORIMETRIC, INTENT_RELATIVE_COLORIMETRIC, cmsFLAGS_GAMUTCHECK);

        cmsCloseProfile(DbgThread(), hSRGB);
        cmsCloseProfile(DbgThread(), hAbove);

        rc = Check16linearXFORM(xform, 3);

        cmsDeleteTransform(DbgThread(), xform);

        return rc;
}
