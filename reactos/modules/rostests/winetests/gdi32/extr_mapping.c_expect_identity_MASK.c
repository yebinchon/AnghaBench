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
struct TYPE_3__ {double eM11; double eM12; double eM21; double eM22; double eDx; double eDy; } ;
typedef  TYPE_1__ XFORM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int,double) ; 

__attribute__((used)) static inline void FUNC1(int line, XFORM *xf)
{
    FUNC0(xf->eM11 == 1.0, "%d: got %f\n", line, xf->eM11);
    FUNC0(xf->eM12 == 0.0, "%d: got %f\n", line, xf->eM12);
    FUNC0(xf->eM21 == 0.0, "%d: got %f\n", line, xf->eM21);
    FUNC0(xf->eM22 == 1.0, "%d: got %f\n", line, xf->eM22);
    FUNC0(xf->eDx == 0.0, "%d: got %f\n", line, xf->eDx);
    FUNC0(xf->eDy == 0.0, "%d: got %f\n", line, xf->eDy);
}