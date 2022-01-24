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
typedef  int /*<<< orphan*/  cmsPipeline ;
typedef  int cmsInt32Number ;
typedef  int /*<<< orphan*/  cmsHPROFILE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  cmsAT_BEGIN ; 
 int /*<<< orphan*/  cmsAT_END ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static
cmsInt32Number FUNC9(cmsInt32Number Pass,  cmsHPROFILE hProfile, cmsTagSignature tag)
{
    cmsPipeline* Lut, *Pt;
    cmsInt32Number rc;


    switch (Pass) {

        case 1:

            Lut = FUNC4(FUNC1(), 3, 3);
            if (Lut == NULL) return 0;

            // Create an identity LUT
            FUNC6(FUNC1(), Lut, cmsAT_BEGIN, FUNC3(FUNC1(), 3));
            FUNC6(FUNC1(), Lut, cmsAT_END, FUNC2(FUNC1(), 3));
            FUNC6(FUNC1(), Lut, cmsAT_END, FUNC3(FUNC1(), 3));

            rc =  FUNC8(FUNC1(), hProfile, tag, Lut);
            FUNC5(FUNC1(), Lut);
            return rc;

        case 2:
            Pt = (cmsPipeline *) FUNC7(FUNC1(), hProfile, tag);
            if (Pt == NULL) return 0;

            // Transform values, check for identity
            return FUNC0(Pt);

        default:
            return 0;
    }
}