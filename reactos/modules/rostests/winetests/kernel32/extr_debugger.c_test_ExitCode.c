
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int test_exe ;
struct TYPE_4__ {scalar_t__ type; int * data; } ;
typedef TYPE_1__ reg_save_value ;
typedef int HKEY ;
typedef char* DWORD ;
typedef int BYTE ;


 char* ERROR_ACCESS_DENIED ;
 char* ERROR_FILE_NOT_FOUND ;
 char* ERROR_SUCCESS ;
 scalar_t__ GetFileAttributesA (char*) ;
 int GetModuleFileNameA (int ,char*,int) ;
 int GetModuleHandleA (int *) ;
 int HKEY_CURRENT_USER ;
 int HKEY_LOCAL_MACHINE ;
 scalar_t__ INVALID_FILE_ATTRIBUTES ;
 int KEY_ALL_ACCESS ;
 int MAX_PATH ;
 char* REG_CREATED_NEW_KEY ;
 int REG_DWORD ;
 char* REG_OPENED_EXISTING_KEY ;
 int REG_OPTION_NON_VOLATILE ;
 scalar_t__ REG_SZ ;
 int RegCloseKey (int ) ;
 char* RegCreateKeyA (int ,char const*,int *) ;
 char* RegCreateKeyExA (int ,char const*,int ,int *,int ,int ,int *,int *,char**) ;
 int RegDeleteKeyA (int ,char const*) ;
 int RegSetValueExA (int ,char*,int ,int ,int *,int) ;
 int crash_and_debug (int ,char*,char*) ;
 int crash_and_winedbg (int ,char*) ;
 int ok (int,char*,char*) ;
 scalar_t__ pDebugActiveProcessStop ;
 scalar_t__ pDebugSetProcessKillOnExit ;
 int restore_value (int ,TYPE_1__*) ;
 int save_value (int ,char*,TYPE_1__*) ;
 int skip (char*) ;
 int strcat (char*,char*) ;
 scalar_t__ strstr (char*,char*) ;
 int trace (char*,char const*,int *) ;
 int win_skip (char*) ;
 scalar_t__ winetest_interactive ;

__attribute__((used)) static void test_ExitCode(void)
{
    static const char* AeDebug="Software\\Microsoft\\Windows NT\\CurrentVersion\\AeDebug";
    static const char* WineDbg="Software\\Wine\\WineDbg";
    char test_exe[MAX_PATH];
    DWORD ret;
    HKEY hkey;
    DWORD disposition;
    reg_save_value auto_value;
    reg_save_value debugger_value;

    GetModuleFileNameA(GetModuleHandleA(((void*)0)), test_exe, sizeof(test_exe));
    if (GetFileAttributesA(test_exe) == INVALID_FILE_ATTRIBUTES)
        strcat(test_exe, ".so");
    if (GetFileAttributesA(test_exe) == INVALID_FILE_ATTRIBUTES)
    {
        ok(0, "could not find the test executable '%s'\n", test_exe);
        return;
    }

    ret=RegCreateKeyExA(HKEY_LOCAL_MACHINE, AeDebug, 0, ((void*)0), REG_OPTION_NON_VOLATILE, KEY_ALL_ACCESS, ((void*)0), &hkey, &disposition);
    if (ret == ERROR_SUCCESS)
    {
        save_value(hkey, "auto", &auto_value);
        save_value(hkey, "debugger", &debugger_value);
        trace("HKLM\\%s\\debugger is set to '%s'\n", AeDebug, debugger_value.data);
    }
    else if (ret == ERROR_ACCESS_DENIED)
    {
        skip("not enough privileges to change the debugger\n");
        return;
    }
    else if (ret != ERROR_FILE_NOT_FOUND)
    {
        ok(0, "could not open the AeDebug key: %d\n", ret);
        return;
    }
    else debugger_value.data = ((void*)0);

    if (debugger_value.data && debugger_value.type == REG_SZ &&
        strstr((char*)debugger_value.data, "winedbg --auto"))
    {
        HKEY hkeyWinedbg;
        ret=RegCreateKeyA(HKEY_CURRENT_USER, WineDbg, &hkeyWinedbg);
        if (ret == ERROR_SUCCESS)
        {
            static DWORD zero;
            reg_save_value crash_dlg_value;
            save_value(hkeyWinedbg, "ShowCrashDialog", &crash_dlg_value);
            RegSetValueExA(hkeyWinedbg, "ShowCrashDialog", 0, REG_DWORD, (BYTE *)&zero, sizeof(DWORD));
            crash_and_winedbg(hkey, test_exe);
            restore_value(hkeyWinedbg, &crash_dlg_value);
            RegCloseKey(hkeyWinedbg);
        }
        else
            ok(0, "Couldn't access WineDbg Key - error %u\n", ret);
    }

    if (winetest_interactive)



        crash_and_debug(hkey, test_exe, "dbg,none");
    else
        skip("\"none\" debugger test needs user interaction\n");
    ok(disposition == REG_OPENED_EXISTING_KEY, "expected REG_OPENED_EXISTING_KEY, got %d\n", disposition);
    crash_and_debug(hkey, test_exe, "dbg,event,order");
    crash_and_debug(hkey, test_exe, "dbg,attach,event,code2");
    if (pDebugSetProcessKillOnExit)
        crash_and_debug(hkey, test_exe, "dbg,attach,event,nokill");
    else
        win_skip("DebugSetProcessKillOnExit is not available\n");
    if (pDebugActiveProcessStop)
        crash_and_debug(hkey, test_exe, "dbg,attach,event,detach");
    else
        win_skip("DebugActiveProcessStop is not available\n");

    if (disposition == REG_CREATED_NEW_KEY)
    {
        RegCloseKey(hkey);
        RegDeleteKeyA(HKEY_LOCAL_MACHINE, AeDebug);
    }
    else
    {
        restore_value(hkey, &auto_value);
        restore_value(hkey, &debugger_value);
        RegCloseKey(hkey);
    }
}
