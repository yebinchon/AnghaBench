
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int UINT ;
typedef int REGSAM ;
typedef scalar_t__ MSIINSTALLCONTEXT ;
typedef int * LPCWSTR ;
typedef int HKEY ;
typedef scalar_t__ BOOL ;


 int ERR (char*) ;
 int ERROR_FUNCTION_FAILED ;
 int HKEY_LOCAL_MACHINE ;
 int KEY_ALL_ACCESS ;
 int KEY_WOW64_64KEY ;
 int LocalFree (int *) ;
 scalar_t__ MSIINSTALLCONTEXT_MACHINE ;
 int RegCreateKeyExW (int ,int *,int ,int *,int ,int,int *,int *,int *) ;
 int RegOpenKeyExW (int ,int *,int ,int,int *) ;
 int SQUASHED_GUID_SIZE ;
 int TRACE (char*,int ,int ) ;
 int debugstr_w (int *) ;
 int * get_user_sid () ;
 int sprintfW (int *,int ,int *,int *) ;
 int squash_guid (int *,int *) ;
 int * szLocalSid ;
 int szUserDataPatch_fmt ;

UINT MSIREG_OpenUserDataPatchKey(LPCWSTR szPatch, MSIINSTALLCONTEXT dwContext, HKEY *key, BOOL create)
{
    REGSAM access = KEY_WOW64_64KEY | KEY_ALL_ACCESS;
    WCHAR *usersid, squashed_patch[SQUASHED_GUID_SIZE], keypath[0x200];

    if (!squash_guid( szPatch, squashed_patch )) return ERROR_FUNCTION_FAILED;
    TRACE("%s squashed %s\n", debugstr_w(szPatch), debugstr_w(squashed_patch));

    if (dwContext == MSIINSTALLCONTEXT_MACHINE)
        sprintfW( keypath, szUserDataPatch_fmt, szLocalSid, squashed_patch );
    else
    {
        if (!(usersid = get_user_sid()))
        {
            ERR("Failed to retrieve user SID\n");
            return ERROR_FUNCTION_FAILED;
        }
        sprintfW( keypath, szUserDataPatch_fmt, usersid, squashed_patch );
        LocalFree(usersid);
    }
    if (create) return RegCreateKeyExW(HKEY_LOCAL_MACHINE, keypath, 0, ((void*)0), 0, access, ((void*)0), key, ((void*)0));
    return RegOpenKeyExW(HKEY_LOCAL_MACHINE, keypath, 0, access, key);
}
