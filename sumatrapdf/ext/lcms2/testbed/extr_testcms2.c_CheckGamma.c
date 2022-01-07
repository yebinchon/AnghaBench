
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsToneCurve ;
typedef int cmsTagSignature ;
typedef int cmsInt32Number ;
typedef int cmsHPROFILE ;


 int DbgThread () ;
 int * cmsBuildGamma (int ,double) ;
 int cmsFreeToneCurve (int ,int *) ;
 int cmsIsToneCurveLinear (int ,int *) ;
 scalar_t__ cmsReadTag (int ,int ,int ) ;
 int cmsWriteTag (int ,int ,int ,int *) ;

__attribute__((used)) static
cmsInt32Number CheckGamma(cmsInt32Number Pass, cmsHPROFILE hProfile, cmsTagSignature tag)
{
    cmsToneCurve *g, *Pt;
    cmsInt32Number rc;

    switch (Pass) {

        case 1:

            g = cmsBuildGamma(DbgThread(), 1.0);
            rc = cmsWriteTag(DbgThread(), hProfile, tag, g);
            cmsFreeToneCurve(DbgThread(), g);
            return rc;

        case 2:
            Pt = (cmsToneCurve *) cmsReadTag(DbgThread(), hProfile, tag);
            if (Pt == ((void*)0)) return 0;
            return cmsIsToneCurveLinear(DbgThread(), Pt);

        default:
            return 0;
    }
}
