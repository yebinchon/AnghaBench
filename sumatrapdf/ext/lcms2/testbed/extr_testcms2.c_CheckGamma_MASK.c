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
typedef  int /*<<< orphan*/  cmsTagSignature ;
typedef  int cmsInt32Number ;
typedef  int /*<<< orphan*/  cmsHPROFILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static
cmsInt32Number FUNC6(cmsInt32Number Pass, cmsHPROFILE hProfile, cmsTagSignature tag)
{
    cmsToneCurve *g, *Pt;
    cmsInt32Number rc;

    switch (Pass) {

        case 1:

            g = FUNC1(FUNC0(), 1.0);
            rc = FUNC5(FUNC0(), hProfile, tag, g);
            FUNC2(FUNC0(), g);
            return rc;

        case 2:
            Pt = (cmsToneCurve *) FUNC4(FUNC0(), hProfile, tag);
            if (Pt == NULL) return 0;
            return FUNC3(FUNC0(), Pt);

        default:
            return 0;
    }
}