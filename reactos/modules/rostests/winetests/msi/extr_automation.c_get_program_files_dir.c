
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LPSTR ;
typedef int LPBYTE ;
typedef int HKEY ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int HKEY_LOCAL_MACHINE ;
 int MAX_PATH ;
 int REG_EXPAND_SZ ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyA (int ,char*,int *) ;
 scalar_t__ RegQueryValueExA (int ,char*,int ,int *,int ,int *) ;
 int TRUE ;

__attribute__((used)) static BOOL get_program_files_dir(LPSTR buf)
{
    HKEY hkey;
    DWORD type = REG_EXPAND_SZ, size;

    if (RegOpenKeyA(HKEY_LOCAL_MACHINE, "Software\\Microsoft\\Windows\\CurrentVersion", &hkey))
        return FALSE;

    size = MAX_PATH;
    if (RegQueryValueExA(hkey, "ProgramFilesDir (x86)", 0, &type, (LPBYTE)buf, &size) &&
        RegQueryValueExA(hkey, "ProgramFilesDir", 0, &type, (LPBYTE)buf, &size))
        return FALSE;

    RegCloseKey(hkey);
    return TRUE;
}
