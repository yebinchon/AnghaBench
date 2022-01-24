#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int cmsInt32Number ;
struct TYPE_6__ {double X; double Y; double Z; } ;
struct TYPE_5__ {double X; double Y; double Z; } ;
struct TYPE_7__ {int IlluminantType; TYPE_2__ SurroundXYZ; TYPE_1__ IlluminantXYZ; } ;
typedef  TYPE_3__ cmsICCViewingConditions ;
typedef  int /*<<< orphan*/  cmsHPROFILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,double,double,double) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmsSigViewingConditionsTag ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 

__attribute__((used)) static
cmsInt32Number FUNC4(cmsInt32Number Pass,  cmsHPROFILE hProfile)
{
    cmsICCViewingConditions* v;
    cmsICCViewingConditions  s;

    switch (Pass) {

        case 1:
            s.IlluminantType = 1;
            s.IlluminantXYZ.X = 0.1;
            s.IlluminantXYZ.Y = 0.2;
            s.IlluminantXYZ.Z = 0.3;
            s.SurroundXYZ.X = 0.4;
            s.SurroundXYZ.Y = 0.5;
            s.SurroundXYZ.Z = 0.6;

            if (!FUNC3(FUNC0(), hProfile, cmsSigViewingConditionsTag, &s)) return 0;
            return 1;

        case 2:
            v = (cmsICCViewingConditions *) FUNC2(FUNC0(), hProfile, cmsSigViewingConditionsTag);
            if (v == NULL) return 0;

            if (v ->IlluminantType != 1) return 0;
            if (!FUNC1("IlluminantXYZ.X", v ->IlluminantXYZ.X, 0.1, 0.001)) return 0;
            if (!FUNC1("IlluminantXYZ.Y", v ->IlluminantXYZ.Y, 0.2, 0.001)) return 0;
            if (!FUNC1("IlluminantXYZ.Z", v ->IlluminantXYZ.Z, 0.3, 0.001)) return 0;

            if (!FUNC1("SurroundXYZ.X", v ->SurroundXYZ.X, 0.4, 0.001)) return 0;
            if (!FUNC1("SurroundXYZ.Y", v ->SurroundXYZ.Y, 0.5, 0.001)) return 0;
            if (!FUNC1("SurroundXYZ.Z", v ->SurroundXYZ.Z, 0.6, 0.001)) return 0;

            return 1;

        default:
            return 0;
    }

}