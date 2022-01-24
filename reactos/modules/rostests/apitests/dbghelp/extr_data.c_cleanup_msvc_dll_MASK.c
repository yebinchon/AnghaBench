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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char const*) ; 
 char* FUNC5 () ; 

void FUNC6()
{
    char szFile[MAX_PATH];
    BOOL ret;
    const char* dir = FUNC5();

    FUNC4(szFile, "%s\\uffs.pdb", dir);
    ret = FUNC0(szFile);
    FUNC3(ret, "DeleteFileA failed(%d)\n", FUNC1());

    FUNC4(szFile, "%s\\uffs.dll", dir);
    ret = FUNC0(szFile);
    FUNC3(ret, "DeleteFileA failed(%d)\n", FUNC1());
    ret = FUNC2(dir);
    FUNC3(ret, "RemoveDirectoryA failed(%d)\n", FUNC1());
}