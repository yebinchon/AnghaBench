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
typedef  int /*<<< orphan*/  cmsHPROFILE ;
typedef  scalar_t__ cmsFloat64Number ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static
cmsInt32Number FUNC8(cmsFloat64Number InkLimit)
{
    cmsHPROFILE h;
    cmsFloat64Number d;

    h =FUNC0(InkLimit, TRUE);
    FUNC5(FUNC1(), h, "lcmstac.icc");
    FUNC2(FUNC1(), h);

    h = FUNC4(FUNC1(), "lcmstac.icc", "r");
    d = FUNC3(FUNC1(), h);
    FUNC2(FUNC1(), h);

    FUNC7("lcmstac.icc");

    if (FUNC6(d - InkLimit) > 5) return 0;

    return 1;
}