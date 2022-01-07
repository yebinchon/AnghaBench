
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ cmsUInt8Number ;
typedef int cmsUInt32Number ;
typedef int cmsInt32Number ;
typedef int cmsHTRANSFORM ;
typedef int cmsHPROFILE ;
typedef int * cmsHANDLE ;
struct TYPE_8__ {int L; int a; int b; } ;
typedef TYPE_1__ cmsCIELab ;
struct TYPE_9__ {int L; int C; int h; } ;
typedef TYPE_2__ cmsCIELCh ;


 int DbgThread () ;
 int INTENT_RELATIVE_COLORIMETRIC ;
 int SubTest (char*) ;
 int TYPE_Lab_DBL ;
 int TYPE_RGB_8 ;
 int cmsCloseProfile (int ,int ) ;
 int cmsCreateLab4Profile (int ,int *) ;
 int cmsCreateTransform (int ,int ,int ,int ,int ,int ,int ) ;
 int cmsCreate_sRGBProfile (int ) ;
 int cmsDeleteTransform (int ,int ) ;
 int cmsDoTransform (int ,int ,scalar_t__*,TYPE_1__*,int) ;
 int cmsFLAGS_NOCACHE ;
 int * cmsGBDAlloc (int ) ;
 int cmsGBDFree (int ,int *) ;
 int cmsGDBAddPoint (int ,int *,TYPE_1__*) ;
 int cmsGDBCheckPoint (int ,int *,TYPE_1__*) ;
 int cmsGDBCompute (int ,int *,int ) ;
 int cmsLCh2Lab (int ,TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static
cmsInt32Number CheckGBD(void)
{
    cmsCIELab Lab;
    cmsHANDLE h;
    cmsInt32Number L, a, b;
    cmsUInt32Number r1, g1, b1;
    cmsHPROFILE hLab, hsRGB;
    cmsHTRANSFORM xform;

    h = cmsGBDAlloc(DbgThread());
    if (h == ((void*)0)) return 0;


    SubTest("Filling RAW gamut");

    for (L=0; L <= 100; L += 10)
        for (a = -128; a <= 128; a += 5)
            for (b = -128; b <= 128; b += 5) {

                Lab.L = L;
                Lab.a = a;
                Lab.b = b;
                if (!cmsGDBAddPoint(DbgThread(), h, &Lab)) return 0;
            }


    SubTest("computing Lab gamut");
    if (!cmsGDBCompute(DbgThread(), h, 0)) return 0;



    SubTest("checking Lab gamut");
    for (L=10; L <= 90; L += 25)
        for (a = -120; a <= 120; a += 25)
            for (b = -120; b <= 120; b += 25) {

                Lab.L = L;
                Lab.a = a;
                Lab.b = b;
                if (!cmsGDBCheckPoint(DbgThread(), h, &Lab)) {
                    return 0;
                }
            }
    cmsGBDFree(DbgThread(), h);



    SubTest("checking sRGB gamut");
    h = cmsGBDAlloc(DbgThread());
    hsRGB = cmsCreate_sRGBProfile(DbgThread());
    hLab = cmsCreateLab4Profile(DbgThread(), ((void*)0));

    xform = cmsCreateTransform(DbgThread(), hsRGB, TYPE_RGB_8, hLab, TYPE_Lab_DBL, INTENT_RELATIVE_COLORIMETRIC, cmsFLAGS_NOCACHE);
    cmsCloseProfile(DbgThread(), hsRGB); cmsCloseProfile(DbgThread(), hLab);


    for (r1=0; r1 < 256; r1 += 5) {
        for (g1=0; g1 < 256; g1 += 5)
            for (b1=0; b1 < 256; b1 += 5) {


                cmsUInt8Number rgb[3];

                rgb[0] = (cmsUInt8Number) r1;
                rgb[1] = (cmsUInt8Number) g1;
                rgb[2] = (cmsUInt8Number) b1;

                cmsDoTransform(DbgThread(), xform, rgb, &Lab, 1);



                if (!cmsGDBAddPoint(DbgThread(), h, &Lab)) {
                    cmsGBDFree(DbgThread(), h);
                    return 0;
                }


            }
    }


    if (!cmsGDBCompute(DbgThread(), h, 0)) return 0;


    for (r1=10; r1 < 200; r1 += 10) {
        for (g1=10; g1 < 200; g1 += 10)
            for (b1=10; b1 < 200; b1 += 10) {


                cmsUInt8Number rgb[3];

                rgb[0] = (cmsUInt8Number) r1;
                rgb[1] = (cmsUInt8Number) g1;
                rgb[2] = (cmsUInt8Number) b1;

                cmsDoTransform(DbgThread(), xform, rgb, &Lab, 1);
                if (!cmsGDBCheckPoint(DbgThread(), h, &Lab)) {

                    cmsDeleteTransform(DbgThread(), xform);
                    cmsGBDFree(DbgThread(), h);
                    return 0;
                }
            }
    }


    cmsDeleteTransform(DbgThread(), xform);
    cmsGBDFree(DbgThread(), h);

    SubTest("checking LCh chroma ring");
    h = cmsGBDAlloc(DbgThread());


    for (r1=0; r1 < 360; r1++) {

        cmsCIELCh LCh;

        LCh.L = 70;
        LCh.C = 60;
        LCh.h = r1;

        cmsLCh2Lab(DbgThread(), &Lab, &LCh);
        if (!cmsGDBAddPoint(DbgThread(), h, &Lab)) {
                    cmsGBDFree(DbgThread(), h);
                    return 0;
                }
    }


    if (!cmsGDBCompute(DbgThread(), h, 0)) return 0;

    cmsGBDFree(DbgThread(), h);

    return 1;
}
