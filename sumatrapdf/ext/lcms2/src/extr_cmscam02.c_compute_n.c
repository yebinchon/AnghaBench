
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int cmsFloat64Number ;
struct TYPE_4__ {int* XYZ; } ;
struct TYPE_5__ {int Yb; TYPE_1__ adoptedWhite; } ;
typedef TYPE_2__ cmsCIECAM02 ;



__attribute__((used)) static
cmsFloat64Number compute_n(cmsCIECAM02* pMod)
{
    return (pMod -> Yb / pMod -> adoptedWhite.XYZ[1]);
}
