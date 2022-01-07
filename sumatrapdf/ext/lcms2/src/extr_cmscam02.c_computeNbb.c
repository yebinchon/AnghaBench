
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef double cmsFloat64Number ;
struct TYPE_3__ {double n; } ;
typedef TYPE_1__ cmsCIECAM02 ;


 double pow (double,double) ;

__attribute__((used)) static
cmsFloat64Number computeNbb(cmsCIECAM02* pMod)
{
    return (0.725 * pow((1.0 / pMod -> n), 0.2));
}
