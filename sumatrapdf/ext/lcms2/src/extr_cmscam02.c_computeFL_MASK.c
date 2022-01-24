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
typedef  double cmsFloat64Number ;
struct TYPE_3__ {double LA; } ;
typedef  TYPE_1__ cmsCIECAM02 ;

/* Variables and functions */
 double FUNC0 (double,double) ; 

__attribute__((used)) static
cmsFloat64Number FUNC1(cmsCIECAM02* pMod)
{
    cmsFloat64Number k, FL;

    k = 1.0 / ((5.0 * pMod->LA) + 1.0);
    FL = 0.2 * FUNC0(k, 4.0) * (5.0 * pMod->LA) + 0.1 *
        (FUNC0((1.0 - FUNC0(k, 4.0)), 2.0)) *
        (FUNC0((5.0 * pMod->LA), (1.0 / 3.0)));

    return FL;
}