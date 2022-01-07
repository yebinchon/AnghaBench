
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float eM12; float eM21; int eDx; int eDy; void* eM22; void* eM11; } ;
typedef TYPE_1__ XFORM ;


 void* cosf (float) ;
 float sinf (float) ;

__attribute__((used)) static void set_rotation_xform(XFORM *out, float rad, int dx, int dy)
{
    out->eM11 = cosf(rad);
    out->eM12 = -1.f * sinf(rad);
    out->eM21 = sinf(rad);
    out->eM22 = cosf(rad);
    out->eDx = dx;
    out->eDy = dy;
}
