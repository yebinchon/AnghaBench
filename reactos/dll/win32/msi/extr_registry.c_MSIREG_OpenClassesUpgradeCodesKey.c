
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int UINT ;
typedef int REGSAM ;
typedef int * LPCWSTR ;
typedef int HKEY ;
typedef scalar_t__ BOOL ;


 int ERROR_FUNCTION_FAILED ;
 int HKEY_LOCAL_MACHINE ;
 int KEY_ALL_ACCESS ;
 int KEY_WOW64_64KEY ;
 int RegCreateKeyExW (int ,int *,int ,int *,int ,int,int *,int *,int *) ;
 int RegOpenKeyExW (int ,int *,int ,int,int *) ;
 int SQUASHED_GUID_SIZE ;
 int TRACE (char*,int ,int ) ;
 int debugstr_w (int *) ;
 int squash_guid (int *,int *) ;
 int strcatW (int *,int *) ;
 int strcpyW (int *,int ) ;
 int szInstaller_ClassesUpgradeCode ;

UINT MSIREG_OpenClassesUpgradeCodesKey(LPCWSTR szUpgradeCode, HKEY *key, BOOL create)
{
    REGSAM access = KEY_WOW64_64KEY | KEY_ALL_ACCESS;
    WCHAR squashed_uc[SQUASHED_GUID_SIZE], keypath[0x200];

    if (!squash_guid( szUpgradeCode, squashed_uc )) return ERROR_FUNCTION_FAILED;
    TRACE("%s squashed %s\n", debugstr_w(szUpgradeCode), debugstr_w(squashed_uc));

    strcpyW(keypath, szInstaller_ClassesUpgradeCode);
    strcatW( keypath, squashed_uc );

    if (create) return RegCreateKeyExW(HKEY_LOCAL_MACHINE, keypath, 0, ((void*)0), 0, access, ((void*)0), key, ((void*)0));
    return RegOpenKeyExW(HKEY_LOCAL_MACHINE, keypath, 0, access, key);
}
