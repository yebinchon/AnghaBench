
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;
typedef int BYTE ;


 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,scalar_t__) ;
 scalar_t__ REG_SZ ;
 int RegQueryValueExW (int ,int const*,int *,scalar_t__*,int *,scalar_t__*) ;

__attribute__((used)) static WCHAR *get_reg_str(HKEY hkey, const WCHAR *value, DWORD *len)
{
    DWORD type;
    WCHAR *ret = ((void*)0);

    if (!RegQueryValueExW(hkey, value, ((void*)0), &type, ((void*)0), len) && type == REG_SZ)
    {
        if (!(ret = HeapAlloc(GetProcessHeap(), 0, *len))) return ((void*)0);
        RegQueryValueExW(hkey, value, 0, 0, (BYTE *)ret, len);
    }

    return ret;
}
