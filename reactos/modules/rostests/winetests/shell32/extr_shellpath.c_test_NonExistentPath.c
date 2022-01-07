
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int startup ;
typedef int originalPath ;
struct TYPE_9__ {int dwMajorVersion; } ;
struct TYPE_8__ {int hProcess; } ;
struct TYPE_7__ {int cb; void* wShowWindow; void* dwFlags; } ;
typedef TYPE_1__ STARTUPINFOA ;
typedef TYPE_2__ PROCESS_INFORMATION ;
typedef int LPBYTE ;
typedef scalar_t__ HKEY ;
typedef int DWORD ;


 int CreateProcessA (int *,char*,int *,int *,int ,long,int *,int *,TYPE_1__*,TYPE_2__*) ;
 int FALSE ;
 int HKEY_CURRENT_USER ;
 int KEY_ALL_ACCESS ;
 int MAX_PATH ;
 int RegCloseKey (scalar_t__) ;
 int RegFlushKey (scalar_t__) ;
 int RegOpenKeyExA (int ,char const*,int ,int ,scalar_t__*) ;
 int RegQueryValueExA (scalar_t__,char*,int *,int*,int ,int*) ;
 int RegSetValueExA (scalar_t__,char*,int ,int,int ,int) ;
 void* STARTF_USESHOWWINDOW ;
 void* SW_SHOWNORMAL ;
 scalar_t__ WAIT_OBJECT_0 ;
 scalar_t__ WaitForSingleObject (int ,int) ;
 int memcpy (char*,char*,size_t) ;
 int memset (TYPE_1__*,int ,int) ;
 int ok (int,char*) ;
 int pSHFileOperationA ;
 int pSHGetFolderLocation ;
 int pSHGetFolderPathA ;
 int pSHGetSpecialFolderLocation ;
 int pSHGetSpecialFolderPathA ;
 char* selfname ;
 TYPE_3__ shellVersion ;
 int skip (char*,...) ;
 int sprintf (char*,char*,char*) ;
 int strlen (char*) ;
 int trace (char*,char*) ;
 int winetest_wait_child_process (int ) ;

__attribute__((used)) static void test_NonExistentPath(void)
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

    if (!RegOpenKeyExA(HKEY_CURRENT_USER, userShellFolders, 0, KEY_ALL_ACCESS,
     &key))
    {
        DWORD len, type;

        len = sizeof(originalPath);
        if (!RegQueryValueExA(key, "Favorites", ((void*)0), &type,
         (LPBYTE)&originalPath, &len))
        {
            size_t len = strlen(originalPath);

            memcpy(modifiedPath, originalPath, len);
            modifiedPath[len++] = '2';
            modifiedPath[len++] = '\0';
            trace("Changing CSIDL_FAVORITES to %s\n", modifiedPath);
            if (!RegSetValueExA(key, "Favorites", 0, type,
             (LPBYTE)modifiedPath, len))
            {
                char buffer[MAX_PATH+20];
                STARTUPINFOA startup;
                PROCESS_INFORMATION info;

                sprintf(buffer, "%s tests/shellpath.c 1", selfname);
                memset(&startup, 0, sizeof(startup));
                startup.cb = sizeof(startup);
                startup.dwFlags = STARTF_USESHOWWINDOW;
                startup.wShowWindow = SW_SHOWNORMAL;
                CreateProcessA(((void*)0), buffer, ((void*)0), ((void*)0), FALSE, 0L, ((void*)0), ((void*)0),
                 &startup, &info);
                winetest_wait_child_process( info.hProcess );


                trace("Restoring CSIDL_FAVORITES to %s\n", originalPath);
                RegSetValueExA(key, "Favorites", 0, type, (LPBYTE) originalPath,
                 strlen(originalPath) + 1);
                RegFlushKey(key);

                sprintf(buffer, "%s tests/shellpath.c 2", selfname);
                memset(&startup, 0, sizeof(startup));
                startup.cb = sizeof(startup);
                startup.dwFlags = STARTF_USESHOWWINDOW;
                startup.wShowWindow = SW_SHOWNORMAL;
                CreateProcessA(((void*)0), buffer, ((void*)0), ((void*)0), FALSE, 0L, ((void*)0), ((void*)0),
                 &startup, &info);
                ok(WaitForSingleObject(info.hProcess, 30000) == WAIT_OBJECT_0,
                 "child process termination\n");
            }
        }
        else skip("RegQueryValueExA(key, Favorites, ...) failed\n");
        if (key)
            RegCloseKey(key);
    }
    else skip("RegOpenKeyExA(HKEY_CURRENT_USER, %s, ...) failed\n", userShellFolders);
}
