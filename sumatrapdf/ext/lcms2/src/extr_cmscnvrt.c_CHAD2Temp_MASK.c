#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * n; } ;
typedef  TYPE_1__ cmsVEC3 ;
typedef  int /*<<< orphan*/  cmsMAT3 ;
typedef  double cmsFloat64Number ;
typedef  int /*<<< orphan*/  cmsContext ;
typedef  int /*<<< orphan*/  cmsCIExyY ;
struct TYPE_8__ {int /*<<< orphan*/  Z; int /*<<< orphan*/  Y; int /*<<< orphan*/  X; } ;
typedef  TYPE_2__ cmsCIEXYZ ;
struct TYPE_9__ {int /*<<< orphan*/  Z; int /*<<< orphan*/  Y; int /*<<< orphan*/  X; } ;

/* Variables and functions */
 double FALSE ; 
 size_t VX ; 
 size_t VY ; 
 size_t VZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,double*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 

__attribute__((used)) static
cmsFloat64Number FUNC5(cmsContext ContextID, const cmsMAT3* Chad)
{
    // Convert D50 across inverse CHAD to get the absolute white point
    cmsVEC3 d, s;
    cmsCIEXYZ Dest;
    cmsCIExyY DestChromaticity;
    cmsFloat64Number TempK;
    cmsMAT3 m1, m2;

    m1 = *Chad;
    if (!FUNC1(ContextID, &m1, &m2)) return FALSE;

    s.n[VX] = FUNC2(ContextID) -> X;
    s.n[VY] = FUNC2(ContextID) -> Y;
    s.n[VZ] = FUNC2(ContextID) -> Z;

    FUNC0(ContextID, &d, &m2, &s);

    Dest.X = d.n[VX];
    Dest.Y = d.n[VY];
    Dest.Z = d.n[VZ];

    FUNC4(ContextID, &DestChromaticity, &Dest);

    if (!FUNC3(ContextID, &TempK, &DestChromaticity))
        return -1.0;

    return TempK;
}