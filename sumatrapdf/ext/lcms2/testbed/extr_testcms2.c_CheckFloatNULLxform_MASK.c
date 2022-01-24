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
typedef  int cmsInt32Number ;
typedef  int /*<<< orphan*/ * cmsHTRANSFORM ;
typedef  int cmsFloat32Number ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  INTENT_PERCEPTUAL ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,double) ; 
 int /*<<< orphan*/  TYPE_GRAY_FLT ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int*,int) ; 
 int /*<<< orphan*/  cmsFLAGS_NULLTRANSFORM ; 

__attribute__((used)) static
cmsInt32Number FUNC6(void)
{
    int i;
    cmsFloat32Number in[10] = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 };
    cmsFloat32Number out[10];

    cmsHTRANSFORM xform = FUNC3(FUNC0(), NULL, TYPE_GRAY_FLT, NULL, TYPE_GRAY_FLT, INTENT_PERCEPTUAL, cmsFLAGS_NULLTRANSFORM);

    if (xform == NULL) {
        FUNC1("Unable to create float null transform");
        return 0;
    }

    FUNC5(FUNC0(), xform, in, out, 10);

    FUNC4(FUNC0(), xform);
    for (i=0; i < 10; i++) {

        if (!FUNC2("float nullxform", in[i], out[i], 0.001)) {

            return 0;
        }
    }

    return 1;
}