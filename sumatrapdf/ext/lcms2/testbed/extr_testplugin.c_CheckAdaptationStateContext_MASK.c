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
typedef  int /*<<< orphan*/  cmsInt32Number ;
typedef  scalar_t__ cmsFloat64Number ;
typedef  int /*<<< orphan*/ * cmsContext ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,double,double) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 

cmsInt32Number FUNC6(void)
{
    cmsInt32Number rc = 0;
    cmsContext c1, c2, c3;
    cmsFloat64Number old1, old2;

    old1 =  FUNC5(NULL, -1);

    c1 = FUNC3(NULL);

    FUNC5(c1, 0.7);

    c2 = FUNC0(c1, NULL);
    c3 = FUNC0(c2, NULL);

    rc = FUNC2("Adaptation state", FUNC5(c3, -1), 0.7, 0.001);

    FUNC4(c1);
    FUNC4(c2);
    FUNC4(c3);

    old2 =  FUNC5(NULL, -1);

    if (old1 != old2) {
        FUNC1("Adaptation state has changed");
        return 0;
    }

    return rc;
}