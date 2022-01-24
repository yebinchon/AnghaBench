#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  startup ;
typedef  int /*<<< orphan*/  originalPath ;
struct TYPE_9__ {int dwMajorVersion; } ;
struct TYPE_8__ {int /*<<< orphan*/  hProcess; } ;
struct TYPE_7__ {int cb; void* wShowWindow; void* dwFlags; } ;
typedef  TYPE_1__ STARTUPINFOA ;
typedef  TYPE_2__ PROCESS_INFORMATION ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  scalar_t__ HKEY ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,long,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 int /*<<< orphan*/  KEY_ALL_ACCESS ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 void* STARTF_USESHOWWINDOW ; 
 void* SW_SHOWNORMAL ; 
 scalar_t__ WAIT_OBJECT_0 ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int,char*) ; 
 int /*<<< orphan*/  pSHFileOperationA ; 
 int /*<<< orphan*/  pSHGetFolderLocation ; 
 int /*<<< orphan*/  pSHGetFolderPathA ; 
 int /*<<< orphan*/  pSHGetSpecialFolderLocation ; 
 int /*<<< orphan*/  pSHGetSpecialFolderPathA ; 
 char* selfname ; 
 TYPE_3__ shellVersion ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,char*) ; 
 int FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(void)
{
    static const char userShellFolders[] =
     "Software\\Microsoft\\Windows\\CurrentVersion\\Explorer\\User Shell Folders";
    char originalPath[MAX_PATH], modifiedPath[MAX_PATH];
    HKEY key;

    if (!pSHGetFolderPathA) return;
    if (!pSHGetFolderLocation) return;
    if (!pSHGetSpecialFolderPathA) return;
    if (!pSHGetSpecialFolderLocation) return;
    if (!pSHFileOperationA) return;
    if (shellVersion.dwMajorVersion < 5) return;

    if (!FUNC3(HKEY_CURRENT_USER, userShellFolders, 0, KEY_ALL_ACCESS,
     &key))
    {
        DWORD len, type;

        len = sizeof(originalPath);
        if (!FUNC4(key, "Favorites", NULL, &type,
         (LPBYTE)&originalPath, &len))
        {
            size_t len = FUNC12(originalPath);

            FUNC7(modifiedPath, originalPath, len);
            modifiedPath[len++] = '2';
            modifiedPath[len++] = '\0';
            FUNC13("Changing CSIDL_FAVORITES to %s\n", modifiedPath);
            if (!FUNC5(key, "Favorites", 0, type,
             (LPBYTE)modifiedPath, len))
            {
                char buffer[MAX_PATH+20];
                STARTUPINFOA startup;
                PROCESS_INFORMATION info;

                FUNC11(buffer, "%s tests/shellpath.c 1", selfname);
                FUNC8(&startup, 0, sizeof(startup));
                startup.cb = sizeof(startup);
                startup.dwFlags = STARTF_USESHOWWINDOW;
                startup.wShowWindow = SW_SHOWNORMAL;
                FUNC0(NULL, buffer, NULL, NULL, FALSE, 0L, NULL, NULL,
                 &startup, &info);
                FUNC14( info.hProcess );

                /* restore original values: */
                FUNC13("Restoring CSIDL_FAVORITES to %s\n", originalPath);
                FUNC5(key, "Favorites", 0, type, (LPBYTE) originalPath,
                 FUNC12(originalPath) + 1);
                FUNC2(key);

                FUNC11(buffer, "%s tests/shellpath.c 2", selfname);
                FUNC8(&startup, 0, sizeof(startup));
                startup.cb = sizeof(startup);
                startup.dwFlags = STARTF_USESHOWWINDOW;
                startup.wShowWindow = SW_SHOWNORMAL;
                FUNC0(NULL, buffer, NULL, NULL, FALSE, 0L, NULL, NULL,
                 &startup, &info);
                FUNC9(FUNC6(info.hProcess, 30000) == WAIT_OBJECT_0,
                 "child process termination\n");
            }
        }
        else FUNC10("RegQueryValueExA(key, Favorites, ...) failed\n");
        if (key)
            FUNC1(key);
    }
    else FUNC10("RegOpenKeyExA(HKEY_CURRENT_USER, %s, ...) failed\n", userShellFolders);
}