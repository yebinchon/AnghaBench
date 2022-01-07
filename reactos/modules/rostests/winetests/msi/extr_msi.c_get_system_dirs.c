
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPBYTE ;
typedef int HKEY ;
typedef int DWORD ;
typedef int BOOL ;


 scalar_t__ COMMON_FILES_DIR ;
 int FALSE ;
 int GetWindowsDirectoryA (int ,int ) ;
 int HKEY_LOCAL_MACHINE ;
 int MAX_PATH ;
 scalar_t__ PROG_FILES_DIR ;
 scalar_t__ PROG_FILES_DIR_NATIVE ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyA (int ,char*,int *) ;
 scalar_t__ RegQueryValueExA (int ,char*,int ,int *,int ,int *) ;
 int TRUE ;
 int WINDOWS_DIR ;

__attribute__((used)) static BOOL get_system_dirs(void)
{
    HKEY hkey;
    DWORD type, size;

    if (RegOpenKeyA(HKEY_LOCAL_MACHINE, "Software\\Microsoft\\Windows\\CurrentVersion", &hkey))
        return FALSE;

    size = MAX_PATH;
    if (RegQueryValueExA(hkey, "ProgramFilesDir (x86)", 0, &type, (LPBYTE)PROG_FILES_DIR, &size) &&
        RegQueryValueExA(hkey, "ProgramFilesDir", 0, &type, (LPBYTE)PROG_FILES_DIR, &size))
    {
        RegCloseKey(hkey);
        return FALSE;
    }
    size = MAX_PATH;
    if (RegQueryValueExA(hkey, "CommonFilesDir (x86)", 0, &type, (LPBYTE)COMMON_FILES_DIR, &size) &&
        RegQueryValueExA(hkey, "CommonFilesDir", 0, &type, (LPBYTE)COMMON_FILES_DIR, &size))
    {
        RegCloseKey(hkey);
        return FALSE;
    }
    size = MAX_PATH;
    if (RegQueryValueExA(hkey, "ProgramFilesDir", 0, &type, (LPBYTE)PROG_FILES_DIR_NATIVE, &size))
    {
        RegCloseKey(hkey);
        return FALSE;
    }
    RegCloseKey(hkey);
    if (!GetWindowsDirectoryA(WINDOWS_DIR, MAX_PATH)) return FALSE;
    return TRUE;
}
