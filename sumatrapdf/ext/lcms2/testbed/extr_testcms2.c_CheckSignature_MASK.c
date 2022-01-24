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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmsSigPerceptualReferenceMediumGamut ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static
cmsInt32Number FUNC3(cmsInt32Number Pass,  cmsHPROFILE hProfile, cmsTagSignature tag)
{
    cmsTagSignature *Pt, Holder;

    switch (Pass) {

        case 1:
            Holder = (cmsTagSignature) cmsSigPerceptualReferenceMediumGamut;
            return FUNC2(FUNC0(), hProfile, tag, &Holder);

        case 2:
            Pt = (cmsTagSignature *) FUNC1(FUNC0(), hProfile, tag);
            if (Pt == NULL) return 0;
            return *Pt == cmsSigPerceptualReferenceMediumGamut;

        default:
            return 0;
    }
}