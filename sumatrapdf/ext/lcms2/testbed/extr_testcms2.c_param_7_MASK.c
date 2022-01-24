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
typedef  int cmsFloat64Number ;
typedef  int /*<<< orphan*/  cmsFloat32Number ;

/* Variables and functions */
 int const FUNC0 (int const) ; 
 int const FUNC1 (int /*<<< orphan*/ ,int const) ; 

__attribute__((used)) static
cmsFloat32Number FUNC2(cmsFloat32Number x, const cmsFloat64Number Params[])
{
    cmsFloat64Number Val;


    Val = Params[1]*FUNC0(Params[2] * FUNC1(x, Params[0]) + Params[3]) + Params[4];

    return (cmsFloat32Number) Val;
}