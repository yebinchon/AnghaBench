
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ cmsFloat64Number ;
struct TYPE_3__ {int LA; scalar_t__ F; } ;
typedef TYPE_1__ cmsCIECAM02 ;


 double exp (int) ;

__attribute__((used)) static
cmsFloat64Number computeD(cmsCIECAM02* pMod)
{
    cmsFloat64Number D;

    D = pMod->F - (1.0/3.6)*(exp(((-pMod ->LA-42) / 92.0)));

    return D;
}
