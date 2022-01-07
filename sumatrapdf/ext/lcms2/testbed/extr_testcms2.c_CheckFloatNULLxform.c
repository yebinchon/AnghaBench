
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsInt32Number ;
typedef int * cmsHTRANSFORM ;
typedef int cmsFloat32Number ;


 int DbgThread () ;
 int Fail (char*) ;
 int INTENT_PERCEPTUAL ;
 int IsGoodVal (char*,int,int,double) ;
 int TYPE_GRAY_FLT ;
 int * cmsCreateTransform (int ,int *,int ,int *,int ,int ,int ) ;
 int cmsDeleteTransform (int ,int *) ;
 int cmsDoTransform (int ,int *,int*,int*,int) ;
 int cmsFLAGS_NULLTRANSFORM ;

__attribute__((used)) static
cmsInt32Number CheckFloatNULLxform(void)
{
    int i;
    cmsFloat32Number in[10] = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 };
    cmsFloat32Number out[10];

    cmsHTRANSFORM xform = cmsCreateTransform(DbgThread(), ((void*)0), TYPE_GRAY_FLT, ((void*)0), TYPE_GRAY_FLT, INTENT_PERCEPTUAL, cmsFLAGS_NULLTRANSFORM);

    if (xform == ((void*)0)) {
        Fail("Unable to create float null transform");
        return 0;
    }

    cmsDoTransform(DbgThread(), xform, in, out, 10);

    cmsDeleteTransform(DbgThread(), xform);
    for (i=0; i < 10; i++) {

        if (!IsGoodVal("float nullxform", in[i], out[i], 0.001)) {

            return 0;
        }
    }

    return 1;
}
