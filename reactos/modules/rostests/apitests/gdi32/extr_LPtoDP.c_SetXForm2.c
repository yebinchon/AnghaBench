
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int eM11; int eM22; scalar_t__ eDy; scalar_t__ eDx; scalar_t__ eM21; scalar_t__ eM12; } ;
typedef TYPE_1__ XFORM ;



__attribute__((used)) static void SetXForm2(XFORM *pxform)
{
    pxform->eM11 = 2;
    pxform->eM12 = 0;
    pxform->eM21 = 0;
    pxform->eM22 = 3;
    pxform->eDx = 0;
    pxform->eDy = 0;
}
