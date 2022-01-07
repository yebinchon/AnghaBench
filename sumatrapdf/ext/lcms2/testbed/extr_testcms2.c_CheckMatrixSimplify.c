
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsInt32Number ;
typedef int cmsHTRANSFORM ;
typedef int * cmsHPROFILE ;


 int DbgThread () ;
 int INTENT_PERCEPTUAL ;
 int TYPE_RGB_8 ;
 int cmsCloseProfile (int ,int *) ;
 int cmsCreateTransform (int ,int *,int ,int *,int ,int ,int ) ;
 int * cmsCreate_sRGBProfile (int ) ;
 int cmsDeleteTransform (int ,int ) ;
 int cmsDoTransformStride (int ,int ,unsigned char*,unsigned char*,int,int) ;
 int * cmsOpenProfileFromFile (int ,char*,char*) ;

__attribute__((used)) static
cmsInt32Number CheckMatrixSimplify(void)
{

       cmsHPROFILE pIn;
       cmsHPROFILE pOut;
       cmsHTRANSFORM t;
       unsigned char buf[3] = { 127, 32, 64 };


       pIn = cmsCreate_sRGBProfile(DbgThread());
       pOut = cmsOpenProfileFromFile(DbgThread(), "ibm-t61.icc", "r");
       if (pIn == ((void*)0) || pOut == ((void*)0))
              return 0;

       t = cmsCreateTransform(DbgThread(), pIn, TYPE_RGB_8, pOut, TYPE_RGB_8, INTENT_PERCEPTUAL, 0);
       cmsDoTransformStride(DbgThread(), t, buf, buf, 1, 1);
       cmsDeleteTransform(DbgThread(), t);
       cmsCloseProfile(DbgThread(), pIn);
       cmsCloseProfile(DbgThread(), pOut);


       return buf[0] == 144 && buf[1] == 0 && buf[2] == 69;
}
