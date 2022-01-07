
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsToneCurve ;
typedef int cmsInt32Number ;
typedef int cmsHPROFILE ;


 int DbgThread () ;
 int IsGoodVal (char*,int ,double,double) ;
 int * cmsBuildGamma (int ,double) ;
 int cmsEstimateGamma (int ,int *,double) ;
 int cmsFreeToneCurveTriple (int ,int **) ;
 scalar_t__ cmsReadTag (int ,int ,int ) ;
 int cmsSigVcgtTag ;
 int cmsWriteTag (int ,int ,int ,int **) ;

__attribute__((used)) static
cmsInt32Number CheckVCGT(cmsInt32Number Pass, cmsHPROFILE hProfile)
{
    cmsToneCurve* Curves[3];
    cmsToneCurve** PtrCurve;

     switch (Pass) {

        case 1:
            Curves[0] = cmsBuildGamma(DbgThread(), 1.1);
            Curves[1] = cmsBuildGamma(DbgThread(), 2.2);
            Curves[2] = cmsBuildGamma(DbgThread(), 3.4);

            if (!cmsWriteTag(DbgThread(), hProfile, cmsSigVcgtTag, Curves)) return 0;

            cmsFreeToneCurveTriple(DbgThread(), Curves);
            return 1;


        case 2:

             PtrCurve = (cmsToneCurve **) cmsReadTag(DbgThread(), hProfile, cmsSigVcgtTag);
             if (PtrCurve == ((void*)0)) return 0;
             if (!IsGoodVal("VCGT R", cmsEstimateGamma(DbgThread(), PtrCurve[0], 0.01), 1.1, 0.001)) return 0;
             if (!IsGoodVal("VCGT G", cmsEstimateGamma(DbgThread(), PtrCurve[1], 0.01), 2.2, 0.001)) return 0;
             if (!IsGoodVal("VCGT B", cmsEstimateGamma(DbgThread(), PtrCurve[2], 0.01), 3.4, 0.001)) return 0;
             return 1;

        default:;
    }

    return 0;
}
