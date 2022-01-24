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
typedef  int /*<<< orphan*/ * cmsHPROFILE ;
typedef  int /*<<< orphan*/  cmsContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int Verbose ; 
 int /*<<< orphan*/  cmsInfoCopyright ; 
 int /*<<< orphan*/  cmsInfoDescription ; 
 int /*<<< orphan*/  cmsInfoManufacturer ; 
 int /*<<< orphan*/  cmsInfoModel ; 
 int /*<<< orphan*/  cmsSigColorantTableOutTag ; 
 int /*<<< orphan*/  cmsSigColorantTableTag ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC4(cmsContext ContextID, cmsHPROFILE hInput)
{
    if (hInput == NULL) {
			FUNC2(stderr, "*Wrong or corrupted profile*\n");
            return;
    }

    FUNC1(ContextID, hInput, cmsInfoDescription);
    FUNC1(ContextID, hInput, cmsInfoManufacturer);
    FUNC1(ContextID, hInput, cmsInfoModel);
    FUNC1(ContextID, hInput, cmsInfoCopyright);

    if (Verbose > 2) {

        FUNC0(ContextID, hInput, cmsSigColorantTableTag,    "Input colorant table");
        FUNC0(ContextID, hInput, cmsSigColorantTableOutTag, "Input colorant out table");
    }

    FUNC3("\n");
}