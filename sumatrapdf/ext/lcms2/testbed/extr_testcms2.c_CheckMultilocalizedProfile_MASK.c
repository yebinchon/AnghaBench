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
typedef  int /*<<< orphan*/  cmsInt32Number ;
typedef  int /*<<< orphan*/  cmsHPROFILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmsSigProfileDescriptionTag ; 
 scalar_t__ FUNC5 (char*,char*) ; 

__attribute__((used)) static
cmsInt32Number FUNC6(void)
{
    cmsHPROFILE hProfile;
    cmsMLU *Pt;
    char Buffer[256];

    hProfile = FUNC3(FUNC0(), "crayons.icc", "r");

    Pt = (cmsMLU *) FUNC4(FUNC0(), hProfile, cmsSigProfileDescriptionTag);
    FUNC2(FUNC0(), Pt, "en", "GB", Buffer, 256);
    if (FUNC5(Buffer, "Crayon Colours") != 0) return FALSE;
    FUNC2(FUNC0(), Pt, "en", "US", Buffer, 256);
    if (FUNC5(Buffer, "Crayon Colors") != 0) return FALSE;

    FUNC1(FUNC0(), hProfile);

    return TRUE;
}