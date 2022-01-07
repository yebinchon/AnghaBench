
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int cmsToneCurve ;
typedef int cmsHPROFILE ;
struct TYPE_8__ {double member_0; double member_1; int member_2; } ;
struct TYPE_7__ {double member_0; double member_1; int member_2; } ;
struct TYPE_6__ {double member_0; double member_1; int member_2; } ;
struct TYPE_9__ {TYPE_3__ member_2; TYPE_2__ member_1; TYPE_1__ member_0; } ;
typedef TYPE_4__ cmsCIExyYTRIPLE ;
typedef int cmsCIExyY ;


 int DbgThread () ;
 int * cmsBuildGamma (int ,double) ;
 int cmsCreateRGBProfile (int ,int *,TYPE_4__*,int **) ;
 int cmsFreeToneCurve (int ,int *) ;
 int cmsWhitePointFromTemp (int ,int *,int) ;

__attribute__((used)) static
cmsHPROFILE Create_AboveRGB(void)
{
    cmsToneCurve* Curve[3];
    cmsHPROFILE hProfile;
    cmsCIExyY D65;
    cmsCIExyYTRIPLE Primaries = {{0.64, 0.33, 1 },
                                 {0.21, 0.71, 1 },
                                 {0.15, 0.06, 1 }};

    Curve[0] = Curve[1] = Curve[2] = cmsBuildGamma(DbgThread(), 2.19921875);

    cmsWhitePointFromTemp(DbgThread(), &D65, 6504);
    hProfile = cmsCreateRGBProfile(DbgThread(), &D65, &Primaries, Curve);
    cmsFreeToneCurve(DbgThread(), Curve[0]);

    return hProfile;
}
