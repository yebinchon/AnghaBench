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
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  hmscoree ; 
 void* pCreateConfigStream ; 
 void* pGetCORSystemDirectory ; 
 void* pGetCORVersion ; 
 void* pGetRequestedRuntimeInfo ; 
 void* pLoadLibraryShim ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static BOOL FUNC4(void)
{
    hmscoree = FUNC2("mscoree.dll");

    if (!hmscoree)
    {
        FUNC3("mscoree.dll not available\n");
        return FALSE;
    }

    pGetCORVersion = (void *)FUNC1(hmscoree, "GetCORVersion");
    pGetCORSystemDirectory = (void *)FUNC1(hmscoree, "GetCORSystemDirectory");
    pGetRequestedRuntimeInfo = (void *)FUNC1(hmscoree, "GetRequestedRuntimeInfo");
    pLoadLibraryShim = (void *)FUNC1(hmscoree, "LoadLibraryShim");
    pCreateConfigStream = (void *)FUNC1(hmscoree, "CreateConfigStream");

    if (!pGetCORVersion || !pGetCORSystemDirectory || !pGetRequestedRuntimeInfo || !pLoadLibraryShim)
    {
        FUNC3("functions not available\n");
        FUNC0(hmscoree);
        return FALSE;
    }

    return TRUE;
}