#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  ID8; } ;
typedef  TYPE_1__ cmsProfileID ;
typedef  scalar_t__ cmsHPROFILE ;
typedef  int /*<<< orphan*/  _cmsICCPROFILE ;
typedef  int /*<<< orphan*/  ProfileID2 ;
typedef  int /*<<< orphan*/  ProfileID1 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static
int FUNC6(void)
{
    _cmsICCPROFILE* h;
    cmsHPROFILE pProfile = FUNC4(FUNC0(), "sRGBlcms2.icc", "r");
    cmsProfileID ProfileID1, ProfileID2, ProfileID3, ProfileID4;

    h =(_cmsICCPROFILE*) pProfile;
    if (FUNC3(FUNC0(), pProfile)) FUNC2(FUNC0(), pProfile, ProfileID1.ID8);
    if (FUNC3(FUNC0(), pProfile)) FUNC2(FUNC0(), pProfile,ProfileID2.ID8);

    FUNC1(FUNC0(), pProfile);


    pProfile = FUNC4(FUNC0(), "sRGBlcms2.icc", "r");

    h =(_cmsICCPROFILE*) pProfile;
    if (FUNC3(FUNC0(), pProfile)) FUNC2(FUNC0(), pProfile, ProfileID3.ID8);
    if (FUNC3(FUNC0(), pProfile)) FUNC2(FUNC0(), pProfile,ProfileID4.ID8);

    FUNC1(FUNC0(), pProfile);

    return ((FUNC5(ProfileID1.ID8, ProfileID3.ID8, sizeof(ProfileID1)) == 0) &&
            (FUNC5(ProfileID2.ID8, ProfileID4.ID8, sizeof(ProfileID2)) == 0));
}