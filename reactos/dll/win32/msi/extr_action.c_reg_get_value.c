
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int HKEY ;
typedef int DWORD ;
typedef int BYTE ;


 int RegQueryValueExW (int ,int const*,int *,int *,int *,int *) ;
 int * msi_alloc (int ) ;

__attribute__((used)) static BYTE *reg_get_value( HKEY hkey, const WCHAR *name, DWORD *type, DWORD *size )
{
    BYTE *ret;
    if (RegQueryValueExW( hkey, name, ((void*)0), ((void*)0), ((void*)0), size )) return ((void*)0);
    if (!(ret = msi_alloc( *size ))) return ((void*)0);
    RegQueryValueExW( hkey, name, ((void*)0), type, ret, size );
    return ret;
}
