
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef scalar_t__* LPCWSTR ;
typedef int LONG ;
typedef int HKEY ;
typedef int BYTE ;


 int REG_MULTI_SZ ;
 int RegSetValueExW (int ,scalar_t__*,int ,int ,int const*,int) ;
 scalar_t__ lstrlenW (scalar_t__*) ;

LONG msi_reg_set_val_multi_str( HKEY hkey, LPCWSTR name, LPCWSTR value )
{
    LPCWSTR p = value;
    while (*p) p += lstrlenW(p) + 1;
    return RegSetValueExW( hkey, name, 0, REG_MULTI_SZ,
                           (const BYTE *)value, (p + 1 - value) * sizeof(WCHAR) );
}
