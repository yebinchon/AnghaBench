#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {float eM12; float eM21; int eDx; int eDy; void* eM22; void* eM11; } ;
typedef  TYPE_1__ XFORM ;

/* Variables and functions */
 void* FUNC0 (float) ; 
 float FUNC1 (float) ; 

__attribute__((used)) static void FUNC2(XFORM *out, float rad, int dx, int dy)
{
    out->eM11 = FUNC0(rad);
    out->eM12 = -1.f * FUNC1(rad);
    out->eM21 = FUNC1(rad);
    out->eM22 = FUNC0(rad);
    out->eDx = dx;
    out->eDy = dy;
}