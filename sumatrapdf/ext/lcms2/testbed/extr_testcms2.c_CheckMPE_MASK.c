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
typedef  int /*<<< orphan*/  cmsPipeline ;
typedef  int cmsInt32Number ;
typedef  int /*<<< orphan*/  cmsHPROFILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmsAT_BEGIN ; 
 int /*<<< orphan*/  cmsAT_END ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ **) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static
cmsInt32Number FUNC13(cmsInt32Number Pass,  cmsHPROFILE hProfile, cmsTagSignature tag)
{
    cmsPipeline* Lut, *Pt;
    cmsToneCurve* G[3];
    cmsInt32Number rc;

    switch (Pass) {

        case 1:

            Lut = FUNC7(FUNC3(), 3, 3);

            FUNC9(FUNC3(), Lut, cmsAT_BEGIN, FUNC4(FUNC3()));
            FUNC9(FUNC3(), Lut, cmsAT_END, FUNC5(FUNC3()));
            FUNC0(Lut);

            G[0] = G[1] = G[2] = FUNC2();
            FUNC9(FUNC3(), Lut, cmsAT_END, FUNC11(FUNC3(), 3, G));
            FUNC6(FUNC3(), G[0]);

            rc = FUNC12(FUNC3(), hProfile, tag, Lut);
            FUNC8(FUNC3(), Lut);
            return rc;

        case 2:
            Pt = (cmsPipeline *) FUNC10(FUNC3(), hProfile, tag);
            if (Pt == NULL) return 0;
            return FUNC1(Pt);

        default:
            return 0;
    }
}