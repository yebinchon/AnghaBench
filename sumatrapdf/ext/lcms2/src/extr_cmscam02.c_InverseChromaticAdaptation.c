
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int cmsUInt32Number ;
struct TYPE_7__ {double* XYZ; double* RGB; } ;
struct TYPE_8__ {double D; TYPE_1__ adoptedWhite; } ;
typedef TYPE_2__ cmsCIECAM02 ;
struct TYPE_9__ {double* RGB; double* RGBc; } ;
typedef TYPE_3__ CAM02COLOR ;



__attribute__((used)) static
CAM02COLOR InverseChromaticAdaptation(CAM02COLOR clr, cmsCIECAM02* pMod)
{
    cmsUInt32Number i;
    for (i = 0; i < 3; i++) {
        clr.RGB[i] = clr.RGBc[i] /
            ((pMod->adoptedWhite.XYZ[1] * pMod->D / pMod->adoptedWhite.RGB[i]) + 1.0 - pMod->D);
    }
    return clr;
}
