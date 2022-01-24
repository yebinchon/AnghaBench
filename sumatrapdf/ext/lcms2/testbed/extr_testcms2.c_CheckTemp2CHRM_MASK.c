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
typedef  int cmsFloat64Number ;
typedef  int /*<<< orphan*/  cmsCIExyY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int) ; 

__attribute__((used)) static
cmsInt32Number FUNC4(void)
{
    cmsInt32Number j;
    cmsFloat64Number d, v, Max = 0;
    cmsCIExyY White;

    for (j=4000; j < 25000; j++) {

        FUNC2(FUNC0(), &White, j);
        if (!FUNC1(FUNC0(), &v, &White)) return 0;

        d = FUNC3(v - j);
        if (d > Max) Max = d;
    }

    // 100 degree is the actual resolution
    return (Max < 100);
}