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
typedef  int /*<<< orphan*/  cmsHPROFILE ;
typedef  int /*<<< orphan*/  cmsContext ;
typedef  int /*<<< orphan*/  cmsCIEXYZ ;
typedef  int /*<<< orphan*/  cmsBool ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ cmsSigDisplayClass ; 
 int /*<<< orphan*/  cmsSigMediaWhitePointTag ; 

cmsBool  FUNC5(cmsContext ContextID, cmsCIEXYZ* Dest, cmsHPROFILE hProfile)
{
    cmsCIEXYZ* Tag;

    FUNC0(Dest != NULL);

    Tag = (cmsCIEXYZ*) FUNC4(ContextID, hProfile, cmsSigMediaWhitePointTag);

    // If no wp, take D50
    if (Tag == NULL) {
        *Dest = *FUNC1(ContextID);
        return TRUE;
    }

    // V2 display profiles should give D50
    if (FUNC3(ContextID, hProfile) < 0x4000000) {

        if (FUNC2(ContextID, hProfile) == cmsSigDisplayClass) {
            *Dest = *FUNC1(ContextID);
            return TRUE;
        }
    }

    // All seems ok
    *Dest = *Tag;
    return TRUE;
}