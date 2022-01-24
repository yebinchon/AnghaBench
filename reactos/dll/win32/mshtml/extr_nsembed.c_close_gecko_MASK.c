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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ cat_mgr ; 
 int /*<<< orphan*/  cs_load_gecko ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ pCompMgr ; 
 scalar_t__ pServMgr ; 
 int /*<<< orphan*/ * plugin_directory ; 
 int /*<<< orphan*/ * profile_directory ; 
 int /*<<< orphan*/  FUNC7 () ; 

void FUNC8(void)
{
    FUNC1("()\n");

    FUNC7();
    FUNC2(NULL);

    if(profile_directory) {
        FUNC5(profile_directory);
        profile_directory = NULL;
    }

    if(plugin_directory) {
        FUNC5(plugin_directory);
        plugin_directory = NULL;
    }

    if(pCompMgr)
        FUNC4(pCompMgr);

    if(pServMgr)
        FUNC6(pServMgr);

    if(cat_mgr)
        FUNC3(cat_mgr);

    /* Gecko doesn't really support being unloaded */
    /* if (hXPCOM) FreeLibrary(hXPCOM); */

    FUNC0(&cs_load_gecko);
}