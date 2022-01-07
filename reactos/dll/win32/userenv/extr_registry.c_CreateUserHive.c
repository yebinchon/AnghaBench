
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* LPCWSTR ;
typedef scalar_t__ LONG ;
typedef int * HKEY ;
typedef int DWORD ;
typedef int BOOL ;


 int CopyKey (int *,int *) ;
 int DPRINT (char*,char*) ;
 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 int HKEY_USERS ;
 int KEY_ALL_ACCESS ;
 int KEY_READ ;
 int RegCloseKey (int *) ;
 int RegFlushKey (int *) ;
 scalar_t__ RegOpenKeyExW (int ,char*,int ,int ,int **) ;
 int SetLastError (int ) ;
 int TRUE ;
 int UpdateUsersShellFolderSettings (char*,int *) ;

BOOL
CreateUserHive(LPCWSTR lpKeyName,
               LPCWSTR lpProfilePath)
{
    HKEY hDefaultKey = ((void*)0);
    HKEY hUserKey = ((void*)0);
    LONG Error;
    BOOL Ret = FALSE;

    DPRINT("CreateUserHive(%S) called\n", lpKeyName);

    Error = RegOpenKeyExW(HKEY_USERS,
                          L".Default",
                          0,
                          KEY_READ,
                          &hDefaultKey);
    if (Error != ERROR_SUCCESS)
    {
        SetLastError((DWORD)Error);
        goto Cleanup;
    }

    Error = RegOpenKeyExW(HKEY_USERS,
                          lpKeyName,
                          0,
                          KEY_ALL_ACCESS,
                          &hUserKey);
    if (Error != ERROR_SUCCESS)
    {
        SetLastError((DWORD)Error);
        goto Cleanup;
    }

    if (!CopyKey(hUserKey, hDefaultKey))
    {
        goto Cleanup;
    }

    if (!UpdateUsersShellFolderSettings(lpProfilePath,
                                        hUserKey))
    {
        goto Cleanup;
    }

    RegFlushKey(hUserKey);
    Ret = TRUE;

Cleanup:
    if (hUserKey != ((void*)0))
        RegCloseKey (hUserKey);

    if (hDefaultKey != ((void*)0))
        RegCloseKey (hDefaultKey);

    return Ret;
}
