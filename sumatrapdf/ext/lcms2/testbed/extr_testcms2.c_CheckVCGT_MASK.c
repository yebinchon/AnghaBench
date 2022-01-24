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
typedef  int /*<<< orphan*/  cmsToneCurve ;
typedef  int cmsInt32Number ;
typedef  int /*<<< orphan*/  cmsHPROFILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,double,double) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,double) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmsSigVcgtTag ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

__attribute__((used)) static
cmsInt32Number FUNC7(cmsInt32Number Pass,  cmsHPROFILE hProfile)
{
    cmsToneCurve* Curves[3];
    cmsToneCurve** PtrCurve;

     switch (Pass) {

        case 1:
            Curves[0] = FUNC2(FUNC0(), 1.1);
            Curves[1] = FUNC2(FUNC0(), 2.2);
            Curves[2] = FUNC2(FUNC0(), 3.4);

            if (!FUNC6(FUNC0(), hProfile, cmsSigVcgtTag, Curves)) return 0;

            FUNC4(FUNC0(), Curves);
            return 1;


        case 2:

             PtrCurve = (cmsToneCurve **) FUNC5(FUNC0(), hProfile, cmsSigVcgtTag);
             if (PtrCurve == NULL) return 0;
             if (!FUNC1("VCGT R", FUNC3(FUNC0(), PtrCurve[0], 0.01), 1.1, 0.001)) return 0;
             if (!FUNC1("VCGT G", FUNC3(FUNC0(), PtrCurve[1], 0.01), 2.2, 0.001)) return 0;
             if (!FUNC1("VCGT B", FUNC3(FUNC0(), PtrCurve[2], 0.01), 3.4, 0.001)) return 0;
             return 1;

        default:;
    }

    return 0;
}