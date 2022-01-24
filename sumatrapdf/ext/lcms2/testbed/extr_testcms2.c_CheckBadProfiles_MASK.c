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
typedef  int /*<<< orphan*/ * cmsHPROFILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int SimultaneousErrors ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static
cmsInt32Number FUNC4(void)
{
    cmsHPROFILE h;

    h = FUNC2(FUNC0(), "IDoNotExist.icc", "r");
    if (h != NULL) {
        FUNC1(FUNC0(), h);
        return 0;
    }

    h = FUNC2(FUNC0(), "IAmIllFormed*.icc", "r");
    if (h != NULL) {
        FUNC1(FUNC0(), h);
        return 0;
    }

    // No profile name given
    h = FUNC2(FUNC0(), "", "r");
    if (h != NULL) {
        FUNC1(FUNC0(), h);
        return 0;
    }

    h = FUNC2(FUNC0(), "..", "r");
    if (h != NULL) {
        FUNC1(FUNC0(), h);
        return 0;
    }

    h = FUNC2(FUNC0(), "IHaveBadAccessMode.icc", "@");
    if (h != NULL) {
        FUNC1(FUNC0(), h);
        return 0;
    }

    h = FUNC2(FUNC0(), "bad.icc", "r");
    if (h != NULL) {
        FUNC1(FUNC0(), h);
        return 0;
    }

     h = FUNC2(FUNC0(), "toosmall.icc", "r");
    if (h != NULL) {
        FUNC1(FUNC0(), h);
        return 0;
    }

    h = FUNC3(FUNC0(), NULL, 3);
    if (h != NULL) {
        FUNC1(FUNC0(), h);
        return 0;
    }

    h = FUNC3(FUNC0(), "123", 3);
    if (h != NULL) {
        FUNC1(FUNC0(), h);
        return 0;
    }

    if (SimultaneousErrors != 9) return 0;

    return 1;
}