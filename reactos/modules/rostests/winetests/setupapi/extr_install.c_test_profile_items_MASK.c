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
 int /*<<< orphan*/  CSIDL_COMMON_PROGRAMS ; 
 char* CURR_DIR ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ ERROR_ACCESS_DENIED ; 
 scalar_t__ FUNC2 (char*) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ INVALID_FILE_ATTRIBUTES ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  SHGFP_TYPE_CURRENT ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 char* inffile ; 
 int /*<<< orphan*/  FUNC7 (int,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,char*,char*) ; 

__attribute__((used)) static void FUNC12(void)
{
    char path[MAX_PATH], commonprogs[MAX_PATH];

    static const char *inf =
        "[Version]\n"
        "Signature=\"$Chicago$\"\n"
        "[DefaultInstall]\n"
        "ProfileItems=TestItem,TestItem2,TestGroup\n"
        "[TestItem]\n"
        "Name=TestItem\n"
        "CmdLine=11,,notepad.exe\n"
        "[TestItem2]\n"
        "Name=TestItem2\n"
        "CmdLine=11,,notepad.exe\n"
        "SubDir=TestDir\n"
        "[TestGroup]\n"
        "Name=TestGroup,4\n"
        ;

    if (S_OK != FUNC5(NULL, CSIDL_COMMON_PROGRAMS, NULL, SHGFP_TYPE_CURRENT, commonprogs))
    {
        FUNC9("No common program files directory exists\n");
        goto cleanup;
    }

    FUNC10(path, MAX_PATH, "%s\\TestDir", commonprogs);
    if (!FUNC0(path, NULL) && FUNC3() == ERROR_ACCESS_DENIED)
    {
        FUNC9("need admin rights\n");
        return;
    }
    FUNC4(path);

    FUNC6(inffile, inf);
    FUNC11(path, "%s\\%s", CURR_DIR, inffile);
    FUNC8("DefaultInstall", 128, path);

    FUNC10(path, MAX_PATH, "%s\\TestItem.lnk", commonprogs);
    FUNC10(path, MAX_PATH, "%s\\TestDir", commonprogs);
    FUNC7(INVALID_FILE_ATTRIBUTES != FUNC2(path), "directory not created\n");
    FUNC10(path, MAX_PATH, "%s\\TestDir\\TestItem2.lnk", commonprogs);
    FUNC7(INVALID_FILE_ATTRIBUTES != FUNC2(path), "link not created\n");
    FUNC10(path, MAX_PATH, "%s\\TestGroup", commonprogs);
    FUNC7(INVALID_FILE_ATTRIBUTES != FUNC2(path), "group not created\n");

    FUNC10(path, MAX_PATH, "%s\\TestItem.lnk", commonprogs);
    FUNC1(path);
    FUNC10(path, MAX_PATH, "%s\\TestDir\\TestItem2.lnk", commonprogs);
    FUNC1(path);
    FUNC10(path, MAX_PATH, "%s\\TestItem2.lnk", commonprogs);
    FUNC1(path);
    FUNC10(path, MAX_PATH, "%s\\TestDir", commonprogs);
    FUNC4(path);
    FUNC10(path, MAX_PATH, "%s\\TestGroup", commonprogs);
    FUNC4(path);

cleanup:
    FUNC1(inffile);
}