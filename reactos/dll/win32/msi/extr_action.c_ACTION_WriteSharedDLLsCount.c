
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int LPCWSTR ;
typedef int HKEY ;


 int RegCloseKey (int ) ;
 int RegDeleteValueW (int ,int ) ;
 int msi_reg_set_val_dword (int ,int ,int ) ;
 int openSharedDLLsKey () ;

__attribute__((used)) static UINT ACTION_WriteSharedDLLsCount(LPCWSTR path, UINT count)
{
    HKEY hkey;

    hkey = openSharedDLLsKey();
    if (count > 0)
        msi_reg_set_val_dword( hkey, path, count );
    else
        RegDeleteValueW(hkey,path);
    RegCloseKey(hkey);
    return count;
}
