
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef scalar_t__ LPCWSTR ;
typedef int LONG ;
typedef int HKEY ;
typedef int DWORD ;
typedef int BYTE ;


 int REG_SZ ;
 int RegSetValueExW (int ,scalar_t__,int ,int ,int const*,int) ;
 int lstrlenW (scalar_t__) ;
 scalar_t__ szEmpty ;

LONG msi_reg_set_val_str( HKEY hkey, LPCWSTR name, LPCWSTR value )
{
    DWORD len;
    if (!value) value = szEmpty;
    len = (lstrlenW(value) + 1) * sizeof (WCHAR);
    return RegSetValueExW( hkey, name, 0, REG_SZ, (const BYTE *)value, len );
}
