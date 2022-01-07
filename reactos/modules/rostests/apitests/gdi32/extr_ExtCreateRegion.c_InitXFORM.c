
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_3__ {void* eDy; void* eDx; void* eM22; void* eM21; void* eM12; void* eM11; } ;
typedef TYPE_1__* PXFORM ;
typedef void* FLOAT ;



VOID
InitXFORM(
    PXFORM pxform,
    FLOAT eM11,
    FLOAT eM12,
    FLOAT eM21,
    FLOAT eM22,
    FLOAT eDx,
    FLOAT eDy)
{
    pxform->eM11 = eM11;
    pxform->eM12 = eM12;
    pxform->eM21 = eM21;
    pxform->eM22 = eM22;
    pxform->eDx = eDx;
    pxform->eDy = eDy;
}
