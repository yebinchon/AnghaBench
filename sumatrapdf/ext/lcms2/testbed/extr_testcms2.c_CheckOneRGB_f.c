
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double cmsInt32Number ;
typedef int cmsHTRANSFORM ;
typedef int cmsFloat64Number ;
typedef scalar_t__ cmsFloat32Number ;


 int DbgThread () ;
 scalar_t__ IsGoodVal (char*,int ,int ,int ) ;
 int cmsDoTransform (int ,int ,scalar_t__*,int *,int) ;

__attribute__((used)) static
cmsInt32Number CheckOneRGB_f(cmsHTRANSFORM xform, cmsInt32Number R, cmsInt32Number G, cmsInt32Number B, cmsFloat64Number X, cmsFloat64Number Y, cmsFloat64Number Z, cmsFloat64Number err)
{
    cmsFloat32Number RGB[3];
    cmsFloat64Number Out[3];

    RGB[0] = (cmsFloat32Number) (R / 255.0);
    RGB[1] = (cmsFloat32Number) (G / 255.0);
    RGB[2] = (cmsFloat32Number) (B / 255.0);

    cmsDoTransform(DbgThread(), xform, RGB, Out, 1);

    return IsGoodVal("X", X , Out[0], err) &&
           IsGoodVal("Y", Y , Out[1], err) &&
           IsGoodVal("Z", Z , Out[2], err);
}
