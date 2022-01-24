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
typedef  int cmsUInt16Number ;
typedef  int /*<<< orphan*/  cmsToneCurve ;
typedef  int cmsInt32Number ;
typedef  int /*<<< orphan*/ * cmsHPROFILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,double) ; 
 int /*<<< orphan*/  cmsSigGrayTRCTag ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static
cmsInt32Number FUNC8(void)
{
    cmsHPROFILE h;
    cmsUInt16Number Lin[] = {0, 0xffff};
    cmsToneCurve*g = FUNC1(FUNC0(), 2, Lin);

    h = FUNC4(FUNC0(), "v4gamma.icc", "w");
    if (h == NULL) return 0;


    FUNC5(FUNC0(), h, 4.3);

    if (!FUNC6(FUNC0(), h, cmsSigGrayTRCTag, g)) return 0;
    FUNC2(FUNC0(), h);

    FUNC3(FUNC0(), g);
    FUNC7("v4gamma.icc");
    return 1;
}