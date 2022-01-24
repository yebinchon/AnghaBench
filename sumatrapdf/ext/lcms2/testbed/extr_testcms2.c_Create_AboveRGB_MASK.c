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
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cmsToneCurve ;
typedef  int /*<<< orphan*/  cmsHPROFILE ;
struct TYPE_8__ {double member_0; double member_1; int member_2; } ;
struct TYPE_7__ {double member_0; double member_1; int member_2; } ;
struct TYPE_6__ {double member_0; double member_1; int member_2; } ;
struct TYPE_9__ {TYPE_3__ member_2; TYPE_2__ member_1; TYPE_1__ member_0; } ;
typedef  TYPE_4__ cmsCIExyYTRIPLE ;
typedef  int /*<<< orphan*/  cmsCIExyY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static
cmsHPROFILE FUNC5(void)
{
    cmsToneCurve* Curve[3];
    cmsHPROFILE hProfile;
    cmsCIExyY D65;
    cmsCIExyYTRIPLE Primaries = {{0.64, 0.33, 1 },
                                 {0.21, 0.71, 1 },
                                 {0.15, 0.06, 1 }};

    Curve[0] = Curve[1] = Curve[2] = FUNC1(FUNC0(), 2.19921875);

    FUNC4(FUNC0(), &D65, 6504);
    hProfile = FUNC2(FUNC0(), &D65, &Primaries, Curve);
    FUNC3(FUNC0(), Curve[0]);

    return hProfile;
}