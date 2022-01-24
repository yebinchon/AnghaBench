#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ eDy; scalar_t__ eDx; scalar_t__ eM22; scalar_t__ eM21; scalar_t__ eM12; scalar_t__ eM11; } ;
typedef  TYPE_1__ XFORM ;
typedef  int BOOL ;

/* Variables and functions */
 float FUNC0 (scalar_t__) ; 

__attribute__((used)) static BOOL FUNC1(const XFORM *a, const XFORM *b)
{
    return FUNC0(a->eM11 - b->eM11) < 0.001f &&
        FUNC0(a->eM12 - b->eM12) < 0.001f &&
        FUNC0(a->eM21 - b->eM21) < 0.001f &&
        FUNC0(a->eM22 - b->eM22) < 0.001f &&
        FUNC0(a->eDx - b->eDx) < 0.001f &&
        FUNC0(a->eDy - b->eDy) < 0.001f;
}