#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int cmsInt32Number ;
typedef  int /*<<< orphan*/  cmsHTRANSFORM ;
typedef  int /*<<< orphan*/  cmsFloat64Number ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static
cmsInt32Number FUNC3(cmsHTRANSFORM xform, cmsFloat64Number R, cmsFloat64Number G, cmsFloat64Number B, cmsFloat64Number Ro, cmsFloat64Number Go, cmsFloat64Number Bo)
{
    cmsFloat64Number RGB[3];
    cmsFloat64Number Out[3];

    RGB[0] = R;
    RGB[1] = G;
    RGB[2] = B;

    FUNC2(FUNC0(), xform, RGB, Out, 1);

    return FUNC1("R", Ro , Out[0], 0.01) &&
           FUNC1("G", Go , Out[1], 0.01) &&
           FUNC1("B", Bo , Out[2], 0.01);
}