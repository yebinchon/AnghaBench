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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  hAdvPack ; 
 void* pLaunchINFSection ; 
 void* pLaunchINFSectionEx ; 
 void* pRunSetupCommand ; 

__attribute__((used)) static BOOL FUNC2(void)
{
    hAdvPack = FUNC1("advpack.dll");
    if (!hAdvPack)
        return FALSE;

    pRunSetupCommand = (void *)FUNC0(hAdvPack, "RunSetupCommand");
    pLaunchINFSection = (void *)FUNC0(hAdvPack, "LaunchINFSection");
    pLaunchINFSectionEx = (void *)FUNC0(hAdvPack, "LaunchINFSectionEx");

    if (!pRunSetupCommand || !pLaunchINFSection || !pLaunchINFSectionEx)
        return FALSE;

    return TRUE;
}