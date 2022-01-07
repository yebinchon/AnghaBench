
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int cmsUInt32Number ;
typedef int * cmsHTRANSFORM ;
typedef int * cmsHPROFILE ;
struct TYPE_3__ {int member_0; int member_1; int member_2; } ;
typedef TYPE_1__ cmsFloat64Number ;
typedef int cmsCIEXYZTRIPLE ;
typedef int cmsBool ;


 int DbgThread () ;
 int FALSE ;
 int TRUE ;
 int TYPE_RGB_DBL ;
 int TYPE_XYZ_DBL ;
 int cmsCloseProfile (int ,int *) ;
 int * cmsCreateTransform (int ,int *,int ,int *,int ,int ,int) ;
 int * cmsCreateXYZProfile (int ) ;
 int cmsDeleteTransform (int ,int *) ;
 int cmsDoTransform (int ,int *,TYPE_1__**,int *,int) ;
 int cmsFLAGS_NOCACHE ;
 int cmsFLAGS_NOOPTIMIZE ;

__attribute__((used)) static
cmsBool GetProfileRGBPrimaries(cmsHPROFILE hProfile,
                                cmsCIEXYZTRIPLE *result,
                                cmsUInt32Number intent)
{
    cmsHPROFILE hXYZ;
    cmsHTRANSFORM hTransform;
    cmsFloat64Number rgb[3][3] = {{1., 0., 0.},
    {0., 1., 0.},
    {0., 0., 1.}};

    hXYZ = cmsCreateXYZProfile(DbgThread());
    if (hXYZ == ((void*)0)) return FALSE;

    hTransform = cmsCreateTransform(DbgThread(), hProfile, TYPE_RGB_DBL, hXYZ, TYPE_XYZ_DBL,
        intent, cmsFLAGS_NOCACHE | cmsFLAGS_NOOPTIMIZE);
    cmsCloseProfile(DbgThread(), hXYZ);
    if (hTransform == ((void*)0)) return FALSE;

    cmsDoTransform(DbgThread(), hTransform, rgb, result, 3);
    cmsDeleteTransform(DbgThread(), hTransform);
    return TRUE;
}
