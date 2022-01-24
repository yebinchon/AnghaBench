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
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  cmsSigGamutTag ; 
 int /*<<< orphan*/  cmsSigGreenColorantTag ; 

__attribute__((used)) static
cmsInt32Number FUNC6(void)
{
    cmsInt32Number tag_size, tag_size1;
    char buffer[4];
    cmsHPROFILE hProfile;


    FUNC1("RAW read on on-disk");
    hProfile = FUNC4(FUNC0(), "test1.icc", "r");

    if (hProfile == NULL)
        return 0;

    tag_size = FUNC5(FUNC0(), hProfile, cmsSigGamutTag, buffer, 4);
    tag_size1 = FUNC5(FUNC0(), hProfile, cmsSigGamutTag, NULL, 0);

    FUNC2(FUNC0(), hProfile);

    if (tag_size != 4)
        return 0;

    if (tag_size1 != 37009)
        return 0;

    FUNC1("RAW read on in-memory created profiles");
    hProfile = FUNC3(FUNC0());
    tag_size = FUNC5(FUNC0(), hProfile, cmsSigGreenColorantTag, buffer, 4);
    tag_size1 = FUNC5(FUNC0(), hProfile, cmsSigGreenColorantTag, NULL, 0);

    FUNC2(FUNC0(), hProfile);

    if (tag_size != 4)
        return 0;
    if (tag_size1 != 20)
        return 0;

    return 1;
}