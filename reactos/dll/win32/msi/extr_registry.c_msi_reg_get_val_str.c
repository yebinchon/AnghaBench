
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef scalar_t__* LPWSTR ;
typedef int LPCWSTR ;
typedef int * LPBYTE ;
typedef scalar_t__ LONG ;
typedef int HKEY ;
typedef int DWORD ;


 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ RegQueryValueExW (int ,int ,int *,int *,int *,int*) ;
 scalar_t__* msi_alloc (int) ;

LPWSTR msi_reg_get_val_str( HKEY hkey, LPCWSTR name )
{
    DWORD len = 0;
    LPWSTR val;
    LONG r;

    r = RegQueryValueExW(hkey, name, ((void*)0), ((void*)0), ((void*)0), &len);
    if (r != ERROR_SUCCESS)
        return ((void*)0);

    len += sizeof (WCHAR);
    val = msi_alloc( len );
    if (!val)
        return ((void*)0);
    val[0] = 0;
    RegQueryValueExW(hkey, name, ((void*)0), ((void*)0), (LPBYTE) val, &len);
    return val;
}
