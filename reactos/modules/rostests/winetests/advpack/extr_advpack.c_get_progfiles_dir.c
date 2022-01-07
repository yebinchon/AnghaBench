
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPBYTE ;
typedef int HKEY ;
typedef int DWORD ;


 int APP_PATH ;
 scalar_t__ APP_PATH_LEN ;
 int HKEY_LOCAL_MACHINE ;
 int MAX_PATH ;
 int PROG_FILES ;
 scalar_t__ PROG_FILES_ROOT ;
 int RegCloseKey (int ) ;
 int RegOpenKeyA (int ,char*,int *) ;
 int RegQueryValueExA (int ,char*,int *,int *,int ,int *) ;
 int TEST_STRING1 ;
 int lstrcatA (int ,int ) ;
 int lstrcpyA (int ,scalar_t__) ;
 scalar_t__ lstrlenA (int ) ;

__attribute__((used)) static void get_progfiles_dir(void)
{
    HKEY hkey;
    DWORD size = MAX_PATH;

    RegOpenKeyA(HKEY_LOCAL_MACHINE, "Software\\Microsoft\\Windows\\CurrentVersion", &hkey);
    RegQueryValueExA(hkey, "ProgramFilesDir", ((void*)0), ((void*)0), (LPBYTE)PROG_FILES_ROOT, &size);
    RegCloseKey(hkey);

    lstrcpyA(PROG_FILES, PROG_FILES_ROOT + 3);
    lstrcpyA(APP_PATH, PROG_FILES_ROOT);
    lstrcatA(APP_PATH, TEST_STRING1);
    APP_PATH_LEN = lstrlenA(APP_PATH) + 1;
}
