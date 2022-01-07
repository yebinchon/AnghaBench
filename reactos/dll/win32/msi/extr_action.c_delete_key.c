
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ WCHAR ;
typedef int REGSAM ;
typedef int MSICOMPONENT ;
typedef scalar_t__ LONG ;
typedef int HKEY ;


 int FALSE ;
 int READ_CONTROL ;
 int RegCloseKey (int ) ;
 scalar_t__ RegDeleteKeyExW (int ,scalar_t__*,int,int ) ;
 int TRACE (char*,int ,scalar_t__) ;
 int debugstr_w (scalar_t__*) ;
 int get_registry_view (int const*) ;
 int msi_free (scalar_t__*) ;
 int open_key (int const*,int ,scalar_t__*,int ,int) ;
 scalar_t__* strdupW (scalar_t__ const*) ;
 scalar_t__* strrchrW (scalar_t__*,char) ;

__attribute__((used)) static void delete_key( const MSICOMPONENT *comp, HKEY root, const WCHAR *path )
{
    REGSAM access = 0;
    WCHAR *subkey, *p;
    HKEY hkey;
    LONG res;

    access |= get_registry_view( comp );

    if (!(subkey = strdupW( path ))) return;
    do
    {
        if ((p = strrchrW( subkey, '\\' )))
        {
            *p = 0;
            if (!p[1]) continue;
            hkey = open_key( comp, root, subkey, FALSE, access | READ_CONTROL );
            if (!hkey) break;
            res = RegDeleteKeyExW( hkey, p + 1, access, 0 );
            RegCloseKey( hkey );
        }
        else
            res = RegDeleteKeyExW( root, subkey, access, 0 );
        if (res)
        {
            TRACE("failed to delete key %s (%d)\n", debugstr_w(subkey), res);
            break;
        }
    } while (p);
    msi_free( subkey );
}
