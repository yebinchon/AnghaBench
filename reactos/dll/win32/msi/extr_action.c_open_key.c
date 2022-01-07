
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ WCHAR ;
typedef int REGSAM ;
typedef int MSICOMPONENT ;
typedef scalar_t__ LONG ;
typedef int * HKEY ;
typedef scalar_t__ BOOL ;


 int RegCloseKey (int *) ;
 scalar_t__ RegCreateKeyExW (int *,scalar_t__*,int ,int *,int ,int ,int *,int **,int *) ;
 scalar_t__ RegOpenKeyExW (int *,scalar_t__*,int ,int ,int **) ;
 int TRACE (char*,int ,scalar_t__) ;
 int debugstr_w (scalar_t__*) ;
 int get_registry_view (int const*) ;
 int msi_free (scalar_t__*) ;
 scalar_t__* strchrW (scalar_t__*,char) ;
 scalar_t__* strdupW (scalar_t__ const*) ;

__attribute__((used)) static HKEY open_key( const MSICOMPONENT *comp, HKEY root, const WCHAR *path, BOOL create, REGSAM access )
{
    WCHAR *subkey, *p, *q;
    HKEY hkey, ret = ((void*)0);
    LONG res;

    access |= get_registry_view( comp );

    if (!(subkey = strdupW( path ))) return ((void*)0);
    p = subkey;
    if ((q = strchrW( p, '\\' ))) *q = 0;
    if (create)
        res = RegCreateKeyExW( root, subkey, 0, ((void*)0), 0, access, ((void*)0), &hkey, ((void*)0) );
    else
        res = RegOpenKeyExW( root, subkey, 0, access, &hkey );
    if (res)
    {
        TRACE("failed to open key %s (%d)\n", debugstr_w(subkey), res);
        msi_free( subkey );
        return ((void*)0);
    }
    if (q && q[1])
    {
        ret = open_key( comp, hkey, q + 1, create, access );
        RegCloseKey( hkey );
    }
    else ret = hkey;
    msi_free( subkey );
    return ret;
}
