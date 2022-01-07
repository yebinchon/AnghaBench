
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsInt32Number ;
typedef int cmsHTRANSFORM ;
typedef int cmsHPROFILE ;


 int CheckSeveralLab (int ) ;
 int DbgThread () ;
 int INTENT_RELATIVE_COLORIMETRIC ;
 int SubTest (char const*) ;
 int TYPE_Lab_DBL ;
 int cmsCloseProfile (int ,int ) ;
 int cmsCreateTransform (int ,int ,int ,int ,int ,int ,int ) ;
 int cmsDeleteTransform (int ,int ) ;

__attribute__((used)) static
cmsInt32Number OneTrivialLab(cmsHPROFILE hLab1, cmsHPROFILE hLab2, const char* txt)
{
    cmsHTRANSFORM xform;
    cmsInt32Number rc;

    SubTest(txt);
    xform = cmsCreateTransform(DbgThread(), hLab1, TYPE_Lab_DBL, hLab2, TYPE_Lab_DBL, INTENT_RELATIVE_COLORIMETRIC, 0);
    cmsCloseProfile(DbgThread(), hLab1); cmsCloseProfile(DbgThread(), hLab2);

    rc = CheckSeveralLab(xform);
    cmsDeleteTransform(DbgThread(), xform);
    return rc;
}
