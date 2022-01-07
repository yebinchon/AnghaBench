
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 scalar_t__ CopyFileA (char*,int ,int ) ;
 int FALSE ;
 scalar_t__ GetSystemDirectoryA (char*,int) ;
 int GetTempFileNameA (char*,char*,int ,int ) ;
 int GetTempPathA (int,char*) ;
 int MAX_PATH ;
 int TRUE ;
 int lstrcatA (char*,char*) ;
 int lstrlenA (char*) ;
 int skip (char*) ;
 int test_dll_path ;

__attribute__((used)) static BOOL copy_dll_file(void)
{
    char sys_dir[MAX_PATH+15];
    char temp_path[MAX_PATH];

    if (GetSystemDirectoryA(sys_dir, MAX_PATH) == 0)
    {
        skip("Failed to get system directory. Skipping certificate/PE image tests.\n");
        return FALSE;
    }

    if (sys_dir[lstrlenA(sys_dir) - 1] != '\\')
        lstrcatA(sys_dir, "\\");

    lstrcatA(sys_dir, "imagehlp.dll");


    GetTempPathA(MAX_PATH, temp_path);
    GetTempFileNameA(temp_path, "img", 0, test_dll_path);

    if (CopyFileA(sys_dir, test_dll_path, FALSE) == 0)
    {
        skip("Unable to create copy of imagehlp.dll for tests.\n");
        return FALSE;
    }

    return TRUE;
}
