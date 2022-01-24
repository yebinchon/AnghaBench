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
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int MAX_PATH ; 
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*) ; 
 scalar_t__ winetest_interactive ; 

__attribute__((used)) static void FUNC4(BOOL optional, int folder)
{
    char path[MAX_PATH];
    BOOL ret;

    if (!&pSHGetSpecialFolderPathA) return;

    ret = FUNC2(NULL, path, folder, FALSE);
    if (ret && winetest_interactive)
        FUNC3("%s: %s\n", FUNC0(folder), path);
    FUNC1(ret || optional,
     "SHGetSpecialFolderPathA(NULL, path, %s, FALSE) failed\n",
     FUNC0(folder));
}