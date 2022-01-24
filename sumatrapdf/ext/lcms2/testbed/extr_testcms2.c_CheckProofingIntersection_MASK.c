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
typedef  int /*<<< orphan*/ * cmsHTRANSFORM ;
typedef  int /*<<< orphan*/  cmsHPROFILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  INTENT_ABSOLUTE_COLORIMETRIC ; 
 int /*<<< orphan*/  TYPE_GRAY_FLT ; 
 int /*<<< orphan*/  TYPE_RGB_FLT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int cmsFLAGS_GAMUTCHECK ; 
 int cmsFLAGS_SOFTPROOFING ; 

__attribute__((used)) static
int FUNC7(void)
{
    cmsHPROFILE profile_null, hnd1, hnd2;
    cmsHTRANSFORM transform;

    hnd1 = FUNC5(FUNC1());
    hnd2 = FUNC0();

    profile_null = FUNC3(FUNC1());
    transform = FUNC4(FUNC1(),
        hnd1,
        TYPE_RGB_FLT,
        profile_null,
        TYPE_GRAY_FLT,
        hnd2,
        INTENT_ABSOLUTE_COLORIMETRIC,
        INTENT_ABSOLUTE_COLORIMETRIC,
        cmsFLAGS_GAMUTCHECK |
        cmsFLAGS_SOFTPROOFING);

    FUNC2(FUNC1(), hnd1);
    FUNC2(FUNC1(), hnd2);
    FUNC2(FUNC1(), profile_null);

    // Failed?
    if (transform == NULL) return 0;

    FUNC6(FUNC1(), transform);
    return 1;
}