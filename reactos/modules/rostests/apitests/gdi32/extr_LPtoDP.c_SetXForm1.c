
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int eM11; int eM22; int eDx; int eDy; scalar_t__ eM21; scalar_t__ eM12; } ;
typedef TYPE_1__ XFORM ;



__attribute__((used)) static void SetXForm1(XFORM *pxform)
{
    pxform->eM11 = 1;
    pxform->eM12 = 0;
    pxform->eM21 = 0;
    pxform->eM22 = 1;
    pxform->eDx = 314;
    pxform->eDy = -99;
}
