
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int cmsInt32Number ;
typedef int cmsFloat64Number ;
typedef int cmsCIEXYZ ;
struct TYPE_6__ {int L; int a; int b; } ;
typedef TYPE_1__ cmsCIELab ;


 int DbgThread () ;
 int cmsDeltaE (int ,TYPE_1__*,TYPE_1__*) ;
 int cmsLab2XYZ (int ,int *,int *,TYPE_1__*) ;
 int cmsXYZ2Lab (int ,int *,TYPE_1__*,int *) ;

__attribute__((used)) static
cmsInt32Number CheckLab2XYZ(void)
{
    cmsInt32Number l, a, b;
    cmsFloat64Number dist, Max = 0;
    cmsCIELab Lab, Lab2;
    cmsCIEXYZ XYZ;

    for (l=0; l <= 100; l += 10) {

        for (a=-128; a <= +128; a += 8) {

            for (b=-128; b <= 128; b += 8) {

                Lab.L = l;
                Lab.a = a;
                Lab.b = b;

                cmsLab2XYZ(DbgThread(), ((void*)0), &XYZ, &Lab);
                cmsXYZ2Lab(DbgThread(), ((void*)0), &Lab2, &XYZ);

                dist = cmsDeltaE(DbgThread(), &Lab, &Lab2);
                if (dist > Max) Max = dist;

            }
        }
    }

    return Max < 1E-12;
}
