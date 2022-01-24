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
typedef  double cmsInt32Number ;
typedef  int /*<<< orphan*/  cmsHTRANSFORM ;
typedef  int /*<<< orphan*/  cmsFloat64Number ;
typedef  scalar_t__ cmsFloat32Number ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static
cmsInt32Number FUNC3(cmsHTRANSFORM xform, cmsInt32Number R, cmsInt32Number G, cmsInt32Number B, cmsFloat64Number X, cmsFloat64Number Y, cmsFloat64Number Z, cmsFloat64Number err)
{
    cmsFloat32Number RGB[3];
    cmsFloat64Number Out[3];

    RGB[0] = (cmsFloat32Number) (R / 255.0);
    RGB[1] = (cmsFloat32Number) (G / 255.0);
    RGB[2] = (cmsFloat32Number) (B / 255.0);

    FUNC2(FUNC0(), xform, RGB, Out, 1);

    return FUNC1("X", X , Out[0], err) &&
           FUNC1("Y", Y , Out[1], err) &&
           FUNC1("Z", Z , Out[2], err);
}