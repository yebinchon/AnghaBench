
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int out ;
typedef int cmsUInt8Number ;
typedef int cmsUInt16Number ;
typedef int cmsInt32Number ;
typedef int cmsHTRANSFORM ;
typedef int * cmsHPROFILE ;
typedef int buf3 ;
typedef int buf2 ;
typedef int buf1 ;


 int DbgThread () ;
 int Fail (char*) ;
 int INTENT_PERCEPTUAL ;
 int TYPE_RGBA_16 ;
 int TYPE_RGBA_8 ;
 int TYPE_RGB_8 ;
 int cmsCloseProfile (int ,int *) ;
 int cmsCreateTransform (int ,int *,int ,int *,int ,int ,int ) ;
 int * cmsCreate_sRGBProfile (int ) ;
 int cmsDeleteTransform (int ,int ) ;
 int cmsDoTransformLineStride (int ,int ,int*,int*,int,int,int,int,int ,int ) ;
 int cmsFLAGS_COPY_ALPHA ;
 int * cmsOpenProfileFromFile (int ,char*,char*) ;
 scalar_t__ memcmp (int*,int*,int) ;
 int memset (int*,int ,int) ;

__attribute__((used)) static
cmsInt32Number CheckTransformLineStride(void)
{

       cmsHPROFILE pIn;
       cmsHPROFILE pOut;
       cmsHTRANSFORM t;



       cmsUInt8Number buf1[]= { 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0,
                                0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0,
                                0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0,
                                0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0, };



       cmsUInt8Number buf2[] = { 0xff, 0xff, 0xff, 1, 0xff, 0xff, 0xff, 1, 0,
                                 0xff, 0xff, 0xff, 1, 0xff, 0xff, 0xff, 1, 0,
                                 0xff, 0xff, 0xff, 1, 0xff, 0xff, 0xff, 1, 0,
                                 0xff, 0xff, 0xff, 1, 0xff, 0xff, 0xff, 1, 0};



       cmsUInt16Number buf3[] = { 0xffff, 0xffff, 0xffff, 0x0101, 0xffff, 0xffff, 0xffff, 0x0101, 0,
                                  0xffff, 0xffff, 0xffff, 0x0101, 0xffff, 0xffff, 0xffff, 0x0101, 0,
                                  0xffff, 0xffff, 0xffff, 0x0101, 0xffff, 0xffff, 0xffff, 0x0101, 0,
                                  0xffff, 0xffff, 0xffff, 0x0101, 0xffff, 0xffff, 0xffff, 0x0101, 0 };

       cmsUInt8Number out[1024];


       memset(out, 0, sizeof(out));
       pIn = cmsCreate_sRGBProfile(DbgThread());
       pOut = cmsOpenProfileFromFile(DbgThread(), "ibm-t61.icc", "r");
       if (pIn == ((void*)0) || pOut == ((void*)0))
              return 0;

       t = cmsCreateTransform(DbgThread(), pIn, TYPE_RGB_8, pOut, TYPE_RGB_8, INTENT_PERCEPTUAL, cmsFLAGS_COPY_ALPHA);

       cmsDoTransformLineStride(DbgThread(), t, buf1, out, 2, 4, 7, 7, 0, 0);
       cmsDeleteTransform(DbgThread(), t);

       if (memcmp(out, buf1, sizeof(buf1)) != 0) {
              Fail("Failed transform line stride on RGB8");
              cmsCloseProfile(DbgThread(), pIn);
              cmsCloseProfile(DbgThread(), pOut);
              return 0;
       }

       memset(out, 0, sizeof(out));

       t = cmsCreateTransform(DbgThread(), pIn, TYPE_RGBA_8, pOut, TYPE_RGBA_8, INTENT_PERCEPTUAL, cmsFLAGS_COPY_ALPHA);

       cmsDoTransformLineStride(DbgThread(), t, buf2, out, 2, 4, 9, 9, 0, 0);

       cmsDeleteTransform(DbgThread(), t);


       if (memcmp(out, buf2, sizeof(buf2)) != 0) {
              cmsCloseProfile(DbgThread(), pIn);
              cmsCloseProfile(DbgThread(), pOut);
              Fail("Failed transform line stride on RGBA8");
              return 0;
       }

       memset(out, 0, sizeof(out));

       t = cmsCreateTransform(DbgThread(), pIn, TYPE_RGBA_16, pOut, TYPE_RGBA_16, INTENT_PERCEPTUAL, cmsFLAGS_COPY_ALPHA);

       cmsDoTransformLineStride(DbgThread(), t, buf3, out, 2, 4, 18, 18, 0, 0);

       cmsDeleteTransform(DbgThread(), t);

       if (memcmp(out, buf3, sizeof(buf3)) != 0) {
              cmsCloseProfile(DbgThread(), pIn);
              cmsCloseProfile(DbgThread(), pOut);
              Fail("Failed transform line stride on RGBA16");
              return 0;
       }


       memset(out, 0, sizeof(out));



       t = cmsCreateTransform(DbgThread(), pIn, TYPE_RGBA_8, pOut, TYPE_RGBA_16, INTENT_PERCEPTUAL, cmsFLAGS_COPY_ALPHA);

       cmsDoTransformLineStride(DbgThread(), t, buf2, out, 2, 4, 9, 18, 0, 0);

       cmsDeleteTransform(DbgThread(), t);

       if (memcmp(out, buf3, sizeof(buf3)) != 0) {
              cmsCloseProfile(DbgThread(), pIn);
              cmsCloseProfile(DbgThread(), pOut);
              Fail("Failed transform line stride on RGBA16");
              return 0;
       }



       cmsCloseProfile(DbgThread(), pIn);
       cmsCloseProfile(DbgThread(), pOut);

       return 1;
}
