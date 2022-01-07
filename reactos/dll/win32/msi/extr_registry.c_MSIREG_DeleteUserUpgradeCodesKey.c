
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int UINT ;
typedef int * LPCWSTR ;


 int ERROR_FUNCTION_FAILED ;
 int HKEY_CURRENT_USER ;
 int RegDeleteTreeW (int ,int *) ;
 int SQUASHED_GUID_SIZE ;
 int TRACE (char*,int ,int ) ;
 int debugstr_w (int *) ;
 int squash_guid (int *,int *) ;
 int strcatW (int *,int *) ;
 int strcpyW (int *,int ) ;
 int szInstaller_UserUpgradeCodes ;

UINT MSIREG_DeleteUserUpgradeCodesKey(LPCWSTR szUpgradeCode)
{
    WCHAR squashed_uc[SQUASHED_GUID_SIZE], keypath[0x200];

    if (!squash_guid( szUpgradeCode, squashed_uc )) return ERROR_FUNCTION_FAILED;
    TRACE("%s squashed %s\n", debugstr_w(szUpgradeCode), debugstr_w(squashed_uc));

    strcpyW(keypath, szInstaller_UserUpgradeCodes);
    strcatW( keypath, squashed_uc );
    return RegDeleteTreeW(HKEY_CURRENT_USER, keypath);
}
