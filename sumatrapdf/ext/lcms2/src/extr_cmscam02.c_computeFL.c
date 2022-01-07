
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef double cmsFloat64Number ;
struct TYPE_3__ {double LA; } ;
typedef TYPE_1__ cmsCIECAM02 ;


 double pow (double,double) ;

__attribute__((used)) static
cmsFloat64Number computeFL(cmsCIECAM02* pMod)
{
    cmsFloat64Number k, FL;

    k = 1.0 / ((5.0 * pMod->LA) + 1.0);
    FL = 0.2 * pow(k, 4.0) * (5.0 * pMod->LA) + 0.1 *
        (pow((1.0 - pow(k, 4.0)), 2.0)) *
        (pow((5.0 * pMod->LA), (1.0 / 3.0)));

    return FL;
}
