
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
 int SubTest (char*) ;
 int TYPE_Lab_8 ;
 int TYPE_Lab_DBL ;
 int cmsCloseProfile (int ,int ) ;
 int cmsCreateLab4Profile (int ,int *) ;
 int cmsCreateTransform (int ,int ,int ,int ,int ,int ,int ) ;
 int cmsDeleteTransform (int ,int ) ;
 int cmsOpenProfileFromFile (int ,char*,char*) ;
 int cmsSaveProfileToFile (int ,int ,char*) ;
 int cmsTransform2DeviceLink (int *,int ,double,int ) ;
 int remove (char*) ;

__attribute__((used)) static
cmsInt32Number CheckStoredIdentities(void)
{
    cmsHPROFILE hLab, hLink, h4, h2;
    cmsHTRANSFORM xform;
    cmsInt32Number rc = 1;

    hLab = cmsCreateLab4Profile(DbgThread(), ((void*)0));
    xform = cmsCreateTransform(DbgThread(), hLab, TYPE_Lab_8, hLab, TYPE_Lab_8, 0, 0);

    hLink = cmsTransform2DeviceLink(((void*)0), xform, 3.4, 0);
    cmsSaveProfileToFile(DbgThread(), hLink, "abstractv2.icc");
    cmsCloseProfile(DbgThread(), hLink);

    hLink = cmsTransform2DeviceLink(((void*)0), xform, 4.3, 0);
    cmsSaveProfileToFile(DbgThread(), hLink, "abstractv4.icc");
    cmsCloseProfile(DbgThread(), hLink);

    cmsDeleteTransform(DbgThread(), xform);
    cmsCloseProfile(DbgThread(), hLab);

    h4 = cmsOpenProfileFromFile(DbgThread(), "abstractv4.icc", "r");

    xform = cmsCreateTransform(DbgThread(), h4, TYPE_Lab_DBL, h4, TYPE_Lab_DBL, INTENT_RELATIVE_COLORIMETRIC, 0);

    SubTest("V4");
    rc &= CheckSeveralLab(xform);

    cmsDeleteTransform(DbgThread(), xform);
    cmsCloseProfile(DbgThread(), h4);
    if (!rc) goto Error;


    SubTest("V2");
    h2 = cmsOpenProfileFromFile(DbgThread(), "abstractv2.icc", "r");

    xform = cmsCreateTransform(DbgThread(), h2, TYPE_Lab_DBL, h2, TYPE_Lab_DBL, INTENT_RELATIVE_COLORIMETRIC, 0);
    rc &= CheckSeveralLab(xform);
    cmsDeleteTransform(DbgThread(), xform);
    cmsCloseProfile(DbgThread(), h2);
    if (!rc) goto Error;


    SubTest("V2 -> V4");
    h2 = cmsOpenProfileFromFile(DbgThread(), "abstractv2.icc", "r");
    h4 = cmsOpenProfileFromFile(DbgThread(), "abstractv4.icc", "r");

    xform = cmsCreateTransform(DbgThread(), h4, TYPE_Lab_DBL, h2, TYPE_Lab_DBL, INTENT_RELATIVE_COLORIMETRIC, 0);
    rc &= CheckSeveralLab(xform);
    cmsDeleteTransform(DbgThread(), xform);
    cmsCloseProfile(DbgThread(), h2);
    cmsCloseProfile(DbgThread(), h4);

    SubTest("V4 -> V2");
    h2 = cmsOpenProfileFromFile(DbgThread(), "abstractv2.icc", "r");
    h4 = cmsOpenProfileFromFile(DbgThread(), "abstractv4.icc", "r");

    xform = cmsCreateTransform(DbgThread(), h2, TYPE_Lab_DBL, h4, TYPE_Lab_DBL, INTENT_RELATIVE_COLORIMETRIC, 0);
    rc &= CheckSeveralLab(xform);
    cmsDeleteTransform(DbgThread(), xform);
    cmsCloseProfile(DbgThread(), h2);
    cmsCloseProfile(DbgThread(), h4);

Error:
    remove("abstractv2.icc");
    remove("abstractv4.icc");
    return rc;

}
