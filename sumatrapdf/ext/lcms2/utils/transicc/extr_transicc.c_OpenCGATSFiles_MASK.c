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
typedef  int /*<<< orphan*/  cmsContext ;

/* Variables and functions */
 int /*<<< orphan*/  CGATSoutFilename ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ cmsMAX_PATH ; 
 int /*<<< orphan*/ * hIT8in ; 
 int /*<<< orphan*/  hIT8out ; 
 int nMaxPatches ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int xoptind ; 

__attribute__((used)) static
void FUNC6(cmsContext ContextID, int argc, char *argv[])
{
    int nParams = argc - xoptind;

    if (nParams >= 1)  {

        hIT8in = FUNC4(0, argv[xoptind]);

        if (hIT8in == NULL)
            FUNC0("'%s' is not recognized as a CGATS file", argv[xoptind]);

        nMaxPatches = (int) FUNC3(ContextID, hIT8in, "NUMBER_OF_SETS");
    }

    if (nParams == 2) {

        hIT8out = FUNC2(NULL);
        FUNC1(ContextID);
        FUNC5(CGATSoutFilename, argv[xoptind+1], cmsMAX_PATH-1);
    }

    if (nParams > 2) FUNC0("Too many CGATS files");
}