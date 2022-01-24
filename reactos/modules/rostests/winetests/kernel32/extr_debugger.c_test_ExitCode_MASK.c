#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  test_exe ;
struct TYPE_4__ {scalar_t__ type; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ reg_save_value ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  char* DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 char* ERROR_ACCESS_DENIED ; 
 char* ERROR_FILE_NOT_FOUND ; 
 char* ERROR_SUCCESS ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 scalar_t__ INVALID_FILE_ATTRIBUTES ; 
 int /*<<< orphan*/  KEY_ALL_ACCESS ; 
 int MAX_PATH ; 
 char* REG_CREATED_NEW_KEY ; 
 int /*<<< orphan*/  REG_DWORD ; 
 char* REG_OPENED_EXISTING_KEY ; 
 int /*<<< orphan*/  REG_OPTION_NON_VOLATILE ; 
 scalar_t__ REG_SZ ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,char*) ; 
 scalar_t__ pDebugActiveProcessStop ; 
 scalar_t__ pDebugSetProcessKillOnExit ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 
 scalar_t__ FUNC15 (char*,char*) ; 
 int /*<<< orphan*/  FUNC16 (char*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 scalar_t__ winetest_interactive ; 

__attribute__((used)) static void FUNC18(void)
{
    static const char* AeDebug="Software\\Microsoft\\Windows NT\\CurrentVersion\\AeDebug";
    static const char* WineDbg="Software\\Wine\\WineDbg";
    char test_exe[MAX_PATH];
    DWORD ret;
    HKEY hkey;
    DWORD disposition;
    reg_save_value auto_value;
    reg_save_value debugger_value;

    FUNC1(FUNC2(NULL), test_exe, sizeof(test_exe));
    if (FUNC0(test_exe) == INVALID_FILE_ATTRIBUTES)
        FUNC14(test_exe, ".so");
    if (FUNC0(test_exe) == INVALID_FILE_ATTRIBUTES)
    {
        FUNC10(0, "could not find the test executable '%s'\n", test_exe);
        return;
    }

    ret=FUNC5(HKEY_LOCAL_MACHINE, AeDebug, 0, NULL, REG_OPTION_NON_VOLATILE, KEY_ALL_ACCESS, NULL, &hkey, &disposition);
    if (ret == ERROR_SUCCESS)
    {
        FUNC12(hkey, "auto", &auto_value);
        FUNC12(hkey, "debugger", &debugger_value);
        FUNC16("HKLM\\%s\\debugger is set to '%s'\n", AeDebug, debugger_value.data);
    }
    else if (ret == ERROR_ACCESS_DENIED)
    {
        FUNC13("not enough privileges to change the debugger\n");
        return;
    }
    else if (ret != ERROR_FILE_NOT_FOUND)
    {
        FUNC10(0, "could not open the AeDebug key: %d\n", ret);
        return;
    }
    else debugger_value.data = NULL;

    if (debugger_value.data && debugger_value.type == REG_SZ &&
        FUNC15((char*)debugger_value.data, "winedbg --auto"))
    {
        HKEY hkeyWinedbg;
        ret=FUNC4(HKEY_CURRENT_USER, WineDbg, &hkeyWinedbg);
        if (ret == ERROR_SUCCESS)
        {
            static DWORD zero;
            reg_save_value crash_dlg_value;
            FUNC12(hkeyWinedbg, "ShowCrashDialog", &crash_dlg_value);
            FUNC7(hkeyWinedbg, "ShowCrashDialog", 0, REG_DWORD, (BYTE *)&zero, sizeof(DWORD));
            FUNC9(hkey, test_exe);
            FUNC11(hkeyWinedbg, &crash_dlg_value);
            FUNC3(hkeyWinedbg);
        }
        else
            FUNC10(0, "Couldn't access WineDbg Key - error %u\n", ret);
    }

    if (winetest_interactive)
        /* Since the debugging process never sets the debug event, it isn't recognized
           as a valid debugger and, after the debugger exits, Windows will show a dialog box
           asking the user what to do */
        FUNC8(hkey, test_exe, "dbg,none");
    else
        FUNC13("\"none\" debugger test needs user interaction\n");
    FUNC10(disposition == REG_OPENED_EXISTING_KEY, "expected REG_OPENED_EXISTING_KEY, got %d\n", disposition);
    FUNC8(hkey, test_exe, "dbg,event,order");
    FUNC8(hkey, test_exe, "dbg,attach,event,code2");
    if (pDebugSetProcessKillOnExit)
        FUNC8(hkey, test_exe, "dbg,attach,event,nokill");
    else
        FUNC17("DebugSetProcessKillOnExit is not available\n");
    if (pDebugActiveProcessStop)
        FUNC8(hkey, test_exe, "dbg,attach,event,detach");
    else
        FUNC17("DebugActiveProcessStop is not available\n");

    if (disposition == REG_CREATED_NEW_KEY)
    {
        FUNC3(hkey);
        FUNC6(HKEY_LOCAL_MACHINE, AeDebug);
    }
    else
    {
        FUNC11(hkey, &auto_value);
        FUNC11(hkey, &debugger_value);
        FUNC3(hkey);
    }
}