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
typedef  int /*<<< orphan*/  cmsTagSignature ;
typedef  int cmsInt32Number ;
typedef  int /*<<< orphan*/  cmsHPROFILE ;
typedef  double cmsFloat64Number ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,double,double) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,double*) ; 

__attribute__((used)) static
cmsInt32Number FUNC4(cmsInt32Number Pass,  cmsHPROFILE hProfile, cmsTagSignature tag)
{
    cmsFloat64Number *Pt;
    cmsFloat64Number CHAD[] = { 0, .1, .2, .3, .4, .5, .6, .7, .8 };
    cmsInt32Number i;

    switch (Pass) {

        case 1:
            return FUNC3(FUNC0(), hProfile, tag, CHAD);


        case 2:
            Pt = (cmsFloat64Number *) FUNC2(FUNC0(), hProfile, tag);
            if (Pt == NULL) return 0;

            for (i=0; i < 9; i++) {
                if (!FUNC1("CHAD", Pt[i], CHAD[i])) return 0;
            }

            return 1;

        default:
            return 0;
    }
}