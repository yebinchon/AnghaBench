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
typedef  int /*<<< orphan*/  systemDirx86 ;
typedef  int /*<<< orphan*/  systemDir ;

/* Variables and functions */
 int /*<<< orphan*/  CSIDL_SYSTEM ; 
 int /*<<< orphan*/  CSIDL_SYSTEMX86 ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int MAX_PATH ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(void)
{
    char systemShellPath[MAX_PATH], systemDir[MAX_PATH], systemDirx86[MAX_PATH];

    if (!&pSHGetSpecialFolderPathA) return;

    FUNC0(systemDir, sizeof(systemDir));
    FUNC3(systemDir);
    if (FUNC6(NULL, systemShellPath, CSIDL_SYSTEM, FALSE))
    {
        FUNC3(systemShellPath);
        FUNC4(!FUNC2(systemDir, systemShellPath),
         "GetSystemDirectory returns %s SHGetSpecialFolderPath returns %s\n",
         systemDir, systemShellPath);
    }

    if (!&pGetSystemWow64DirectoryA || !FUNC5(systemDirx86, sizeof(systemDirx86)))
        FUNC0(systemDirx86, sizeof(systemDirx86));
    FUNC3(systemDirx86);
    if (FUNC6(NULL, systemShellPath, CSIDL_SYSTEMX86, FALSE))
    {
        FUNC3(systemShellPath);
        FUNC4(!FUNC2(systemDirx86, systemShellPath) || FUNC1(!FUNC2(systemDir, systemShellPath)),
         "GetSystemDirectory returns %s SHGetSpecialFolderPath returns %s\n",
         systemDir, systemShellPath);
    }
}