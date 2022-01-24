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
typedef  int /*<<< orphan*/  cmsMLU ;
typedef  int cmsInt32Number ;
typedef  int /*<<< orphan*/  cmsHPROFILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*,char*) ; 
 int /*<<< orphan*/  cmsSigDeviceMfgDescTag ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static
cmsInt32Number FUNC7(void)
{
    cmsHPROFILE p;
    cmsMLU *mlu;
    int ret;

    p = FUNC2(NULL);

    /* set value */
    mlu = FUNC3 (NULL, 1);
    ret = FUNC5(FUNC0(), mlu, "en", "US", "bar");
    if (!ret) return 0;

    ret = FUNC6(FUNC0(), p, cmsSigDeviceMfgDescTag, mlu);
    if (!ret) return 0;

    FUNC4(FUNC0(), mlu);

    /* remove the tag  */
    ret = FUNC6(FUNC0(), p, cmsSigDeviceMfgDescTag, NULL);
    if (!ret) return 0;

    /* THIS EXPLODES */
    FUNC1(FUNC0(), p);
    return 1;
}