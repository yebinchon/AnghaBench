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
typedef  int /*<<< orphan*/  cmsContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

cmsInt32Number FUNC7(void)
{
    int a = 1;
    int b = 32;
    cmsInt32Number rc = 0;

    cmsContext c1, c2, c3;

    // This function creates a context with a special
    // memory manager that check allocation
    c1 = FUNC3(&a);
    FUNC5(c1);

    c1 = FUNC3(&a);

    // Let's check duplication
    c2 = FUNC1(c1, NULL);
    c3 = FUNC1(c2, NULL);

    // User data should have been propagated
    rc = (*(int*) FUNC6(c3)) == 1 ;

    // Free resources
    FUNC5(c1);
    FUNC5(c2);
    FUNC5(c3);

    if (!rc) {
        FUNC2("Creation of user data failed");
        return 0;
    }

    // Back to create 3 levels of inherance
    c1 = FUNC4(NULL, &a);
    FUNC0(c1);

    c2 = FUNC1(c1, NULL);
    c3 = FUNC1(c2, &b);

    rc = (*(int*) FUNC6(c3)) == 32 ;

    FUNC5(c1);
    FUNC5(c2);
    FUNC5(c3);

    if (!rc) {
        FUNC2("Modification of user data failed");
        return 0;
    }

    // All seems ok
    return rc;
}