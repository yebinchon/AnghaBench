
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ cmsFloat64Number ;
struct TYPE_3__ {int n; } ;
typedef TYPE_1__ cmsCIECAM02 ;


 scalar_t__ pow (int ,double) ;

__attribute__((used)) static
cmsFloat64Number compute_z(cmsCIECAM02* pMod)
{
    return (1.48 + pow(pMod -> n, 0.5));
}
