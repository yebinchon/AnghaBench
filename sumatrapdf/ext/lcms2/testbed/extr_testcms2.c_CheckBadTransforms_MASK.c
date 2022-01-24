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
typedef  int /*<<< orphan*/ * cmsHPROFILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int INTENT_PERCEPTUAL ; 
 int /*<<< orphan*/  TYPE_BGR_8 ; 
 int /*<<< orphan*/  TYPE_CMYK_8 ; 
 int /*<<< orphan*/  TYPE_Lab_8 ; 
 int /*<<< orphan*/  TYPE_RGB_8 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static
cmsInt32Number FUNC6(void)
{
    cmsHPROFILE h1 = FUNC3(FUNC0());
    cmsHTRANSFORM x1;

    x1 = FUNC2(FUNC0(), NULL, 0, NULL, 0, 0, 0);
    if (x1 != NULL) {
        FUNC4(FUNC0(), x1);
        return 0;
    }



    x1 = FUNC2(FUNC0(), h1, TYPE_RGB_8, h1, TYPE_RGB_8, 12345, 0);
    if (x1 != NULL) {
        FUNC4(FUNC0(), x1);
        return 0;
    }

    x1 = FUNC2(FUNC0(), h1, TYPE_CMYK_8, h1, TYPE_RGB_8, 0, 0);
    if (x1 != NULL) {
        FUNC4(FUNC0(), x1);
        return 0;
    }

    x1 = FUNC2(FUNC0(), h1, TYPE_RGB_8, h1, TYPE_CMYK_8, 1, 0);
    if (x1 != NULL) {
        FUNC4(FUNC0(), x1);
        return 0;
    }

    // sRGB does its output as XYZ!
    x1 = FUNC2(FUNC0(), h1, TYPE_RGB_8, NULL, TYPE_Lab_8, 1, 0);
    if (x1 != NULL) {
        FUNC4(FUNC0(), x1);
        return 0;
    }

    FUNC1(FUNC0(), h1);


    {

    cmsHPROFILE hp1 = FUNC5(FUNC0(),  "test1.icc", "r");
    cmsHPROFILE hp2 = FUNC3(FUNC0());

    x1 = FUNC2(FUNC0(), hp1, TYPE_BGR_8, hp2, TYPE_BGR_8, INTENT_PERCEPTUAL, 0);

    FUNC1(FUNC0(), hp1); FUNC1(FUNC0(), hp2);
    if (x1 != NULL) {
        FUNC4(FUNC0(), x1);
        return 0;
    }
    }

    return 1;

}