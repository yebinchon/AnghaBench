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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  REGSAM ;
typedef  scalar_t__ MSIINSTALLCONTEXT ;
typedef  char* LPSTR ;
typedef  char* LPCSTR ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  char CHAR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 char* CURR_DIR ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int /*<<< orphan*/  KEY_ALL_ACCESS ; 
 int /*<<< orphan*/  KEY_WOW64_64KEY ; 
 int MAX_PATH ; 
 scalar_t__ MSIINSTALLCONTEXT_MACHINE ; 
 scalar_t__ MSIINSTALLCONTEXT_USERMANAGED ; 
 scalar_t__ MSIINSTALLCONTEXT_USERUNMANAGED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  REG_SZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ is_wow64 ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(LPCSTR filename, MSIINSTALLCONTEXT context,
                               LPCSTR guid, LPSTR usersid, BOOL dir)
{
    WCHAR guidW[MAX_PATH];
    WCHAR squashedW[MAX_PATH];
    CHAR squashed[MAX_PATH];
    CHAR comppath[MAX_PATH];
    CHAR prodpath[MAX_PATH];
    CHAR path[MAX_PATH];
    LPCSTR prod = NULL;
    HKEY hkey;
    REGSAM access = KEY_ALL_ACCESS;

    if (is_wow64)
        access |= KEY_WOW64_64KEY;

    FUNC0(CP_ACP, 0, guid, -1, guidW, MAX_PATH);
    FUNC9(guidW, squashedW);
    FUNC4(CP_ACP, 0, squashedW, -1, squashed, MAX_PATH, NULL, NULL);

    if (context == MSIINSTALLCONTEXT_MACHINE)
    {
        prod = "3D0DAE300FACA1300AD792060BCDAA92";
        FUNC8(comppath,
                "SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\"
                "Installer\\UserData\\S-1-5-18\\Components\\%s", squashed);
        FUNC6(prodpath,
                 "SOFTWARE\\Classes\\Installer\\"
                 "Products\\3D0DAE300FACA1300AD792060BCDAA92");
    }
    else if (context == MSIINSTALLCONTEXT_USERUNMANAGED)
    {
        prod = "7D2F387510109040002000060BECB6AB";
        FUNC8(comppath,
                "SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\"
                "Installer\\UserData\\%s\\Components\\%s", usersid, squashed);
        FUNC8(prodpath,
                "SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\"
                "Installer\\%s\\Installer\\Products\\"
                "7D2F387510109040002000060BECB6AB", usersid);
    }
    else if (context == MSIINSTALLCONTEXT_USERMANAGED)
    {
        prod = "7D2F387510109040002000060BECB6AB";
        FUNC8(comppath,
                "SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\"
                "Installer\\UserData\\%s\\Components\\%s", usersid, squashed);
        FUNC8(prodpath,
                "SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\"
                "Installer\\Managed\\%s\\Installer\\Products\\"
                "7D2F387510109040002000060BECB6AB", usersid);
    }

    FUNC2(HKEY_LOCAL_MACHINE, comppath, 0, NULL, 0, access, NULL, &hkey, NULL);

    FUNC6(path, CURR_DIR);
    FUNC5(path, "\\");
    if (!dir) FUNC5(path, filename);

    FUNC3(hkey, prod, 0, REG_SZ, (LPBYTE)path, FUNC7(path));
    FUNC1(hkey);

    FUNC2(HKEY_LOCAL_MACHINE, prodpath, 0, NULL, 0, access, NULL, &hkey, NULL);
    FUNC1(hkey);
}