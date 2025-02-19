
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int UINT ;
typedef int REGSAM ;
typedef scalar_t__ MSIINSTALLCONTEXT ;
typedef int * LPCWSTR ;
typedef int LONG ;
typedef int HKEY ;


 int ERR (char*) ;
 int ERROR_FUNCTION_FAILED ;
 int ERROR_SUCCESS ;
 int HKEY_LOCAL_MACHINE ;
 int KEY_ALL_ACCESS ;
 int KEY_WOW64_64KEY ;
 int LocalFree (int *) ;
 scalar_t__ MSIINSTALLCONTEXT_MACHINE ;
 int RegCloseKey (int ) ;
 int RegDeleteTreeW (int ,int *) ;
 scalar_t__ RegOpenKeyExW (int ,int *,int ,int,int *) ;
 int SQUASHED_GUID_SIZE ;
 int TRACE (char*,int ,int ) ;
 int debugstr_w (int *) ;
 int * get_user_sid () ;
 int sprintfW (int *,int ,int *) ;
 int squash_guid (int *,int *) ;
 int * szLocalSid ;
 int szUserDataPatches_fmt ;

UINT MSIREG_DeleteUserDataPatchKey(LPCWSTR patch, MSIINSTALLCONTEXT context)
{
    REGSAM access = KEY_WOW64_64KEY | KEY_ALL_ACCESS;
    WCHAR *usersid, squashed_patch[SQUASHED_GUID_SIZE], keypath[0x200];
    HKEY hkey;
    LONG r;

    if (!squash_guid( patch, squashed_patch )) return ERROR_FUNCTION_FAILED;
    TRACE("%s squashed %s\n", debugstr_w(patch), debugstr_w(squashed_patch));

    if (context == MSIINSTALLCONTEXT_MACHINE)
        sprintfW(keypath, szUserDataPatches_fmt, szLocalSid);
    else
    {
        if (!(usersid = get_user_sid()))
        {
            ERR("Failed to retrieve user SID\n");
            return ERROR_FUNCTION_FAILED;
        }
        sprintfW(keypath, szUserDataPatches_fmt, usersid);
        LocalFree(usersid);
    }
    if (RegOpenKeyExW(HKEY_LOCAL_MACHINE, keypath, 0, access, &hkey)) return ERROR_SUCCESS;
    r = RegDeleteTreeW( hkey, squashed_patch );
    RegCloseKey(hkey);
    return r;
}
