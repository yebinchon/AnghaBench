
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int cmsInt32Number ;
typedef int cmsFloat64Number ;
struct TYPE_6__ {int L; int a; int b; } ;
typedef TYPE_1__ cmsCIELab ;
typedef int cmsCIELCh ;


 int DbgThread () ;
 int cmsDeltaE (int ,TYPE_1__*,TYPE_1__*) ;
 int cmsLCh2Lab (int ,TYPE_1__*,int *) ;
 int cmsLab2LCh (int ,int *,TYPE_1__*) ;

__attribute__((used)) static
cmsInt32Number CheckLab2LCh(void)
{
    cmsInt32Number l, a, b;
    cmsFloat64Number dist, Max = 0;
    cmsCIELab Lab, Lab2;
    cmsCIELCh LCh;

    for (l=0; l <= 100; l += 10) {

        for (a=-128; a <= +128; a += 8) {

            for (b=-128; b <= 128; b += 8) {

                Lab.L = l;
                Lab.a = a;
                Lab.b = b;

                cmsLab2LCh(DbgThread(), &LCh, &Lab);
                cmsLCh2Lab(DbgThread(), &Lab2, &LCh);

                dist = cmsDeltaE(DbgThread(), &Lab, &Lab2);
                if (dist > Max) Max = dist;
            }
        }
    }

    return Max < 1E-12;
}
