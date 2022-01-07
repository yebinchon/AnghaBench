
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ eDy; scalar_t__ eDx; scalar_t__ eM22; scalar_t__ eM21; scalar_t__ eM12; scalar_t__ eM11; } ;
typedef TYPE_1__ XFORM ;
typedef int BOOL ;


 float fabs (scalar_t__) ;

__attribute__((used)) static BOOL xform_eq(const XFORM *a, const XFORM *b)
{
    return fabs(a->eM11 - b->eM11) < 0.001f &&
        fabs(a->eM12 - b->eM12) < 0.001f &&
        fabs(a->eM21 - b->eM21) < 0.001f &&
        fabs(a->eM22 - b->eM22) < 0.001f &&
        fabs(a->eDx - b->eDx) < 0.001f &&
        fabs(a->eDy - b->eDy) < 0.001f;
}
