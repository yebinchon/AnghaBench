
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct op_mask {scalar_t__ startup; scalar_t__ postlogin; scalar_t__ prelogin; int ntonly; scalar_t__ preboot; int w9xonly; } ;
typedef int gen_path ;
typedef char TCHAR ;
typedef scalar_t__ LONG ;
typedef int HRESULT ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;


 struct op_mask DEFAULT ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ FALSE ;
 int GetLastError () ;
 scalar_t__ GetSystemMetrics (int ) ;
 scalar_t__ GetWindowsDirectory (char*,int) ;
 int HKEY_CURRENT_USER ;
 int HKEY_LOCAL_MACHINE ;
 int KEY_WRITE ;
 int MAX_PATH ;
 scalar_t__ ProcessRunKeys (int ,int ,scalar_t__,scalar_t__) ;
 scalar_t__ REG_OPENED_EXISTING_KEY ;
 int REG_OPTION_VOLATILE ;
 size_t RUNKEY_RUN ;
 size_t RUNKEY_RUNONCE ;
 size_t RUNKEY_RUNSERVICES ;
 size_t RUNKEY_RUNSERVICESONCE ;
 int RegCloseKey (int ) ;
 scalar_t__ RegCreateKeyEx (int ,char*,int ,int *,int ,int ,int *,int *,scalar_t__*) ;
 struct op_mask SESSION_START ;
 struct op_mask SETUP ;
 int SHCreateSessionKey (int ,int *) ;
 int SM_CLEANBOOT ;
 scalar_t__ SUCCEEDED (int ) ;
 int SetCurrentDirectory (char*) ;
 scalar_t__ TRUE ;
 scalar_t__ pendingRename () ;
 int printf (char*,...) ;
 int * runkeys_names ;
 scalar_t__ wininit () ;
 int wprintf (char*,char*,int ) ;

int startup(int argc, const char *argv[])
{
    struct op_mask ops;

    TCHAR gen_path[MAX_PATH];
    DWORD res;
    HKEY hSessionKey, hKey;
    HRESULT hr;

    res = GetWindowsDirectory(gen_path, sizeof(gen_path));

    if (res==0)
    {
  printf("Couldn't get the windows directory - error %ld\n",
   GetLastError());

  return 100;
    }

    if (!SetCurrentDirectory(gen_path))
    {
        wprintf(L"Cannot set the dir to %s (%ld)\n", gen_path, GetLastError());

        return 100;
    }

    hr = SHCreateSessionKey(KEY_WRITE, &hSessionKey);
    if (SUCCEEDED(hr))
    {
        LONG Error;
        DWORD dwDisp;

        Error = RegCreateKeyEx(hSessionKey, L"StartupHasBeenRun", 0, ((void*)0), REG_OPTION_VOLATILE, KEY_WRITE, ((void*)0), &hKey, &dwDisp);
        RegCloseKey(hSessionKey);
        if (Error == ERROR_SUCCESS)
        {
            RegCloseKey(hKey);
            if (dwDisp == REG_OPENED_EXISTING_KEY)
            {

                return 0;
            }
        }
    }

    if (argc > 1)
    {
        switch(argv[1][0])
        {
        case 'r':
            ops = SETUP;
            break;
        case 's':
            ops = SESSION_START;
            break;
        default:
            ops = DEFAULT;
            break;
        }
    } else
        ops = DEFAULT;


    if(GetSystemMetrics(SM_CLEANBOOT)) ops.startup = FALSE;



    res = TRUE;
    if (res && !ops.ntonly && ops.preboot)
         res = wininit();
    if (res && !ops.w9xonly && ops.preboot)
         res = pendingRename();
    if (res && !ops.ntonly && ops.prelogin)
         res = ProcessRunKeys(HKEY_LOCAL_MACHINE, runkeys_names[RUNKEY_RUNSERVICESONCE], TRUE, FALSE);
    if (res && !ops.ntonly && ops.prelogin && ops.startup)
         res = ProcessRunKeys(HKEY_LOCAL_MACHINE, runkeys_names[RUNKEY_RUNSERVICES], FALSE, FALSE);
    if (res && ops.postlogin)
         res = ProcessRunKeys(HKEY_LOCAL_MACHINE, runkeys_names[RUNKEY_RUNONCE], TRUE, TRUE);
    if (res && ops.postlogin && ops.startup)
         res = ProcessRunKeys(HKEY_LOCAL_MACHINE, runkeys_names[RUNKEY_RUN], FALSE, FALSE);
    if (res && ops.postlogin && ops.startup)
         res = ProcessRunKeys(HKEY_CURRENT_USER, runkeys_names[RUNKEY_RUN], FALSE, FALSE);
    if (res && ops.postlogin && ops.startup)
         res = ProcessRunKeys(HKEY_CURRENT_USER, runkeys_names[RUNKEY_RUNONCE], TRUE, FALSE);

    printf("Operation done\n");

    return res ? 0 : 101;
}
