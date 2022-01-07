
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int MSICOMPONENT ;
typedef int LONG ;
typedef int HKEY ;
typedef int DWORD ;


 int FALSE ;
 int KEY_QUERY_VALUE ;
 int KEY_SET_VALUE ;
 int RegCloseKey (int ) ;
 int RegDeleteValueW (int ,int const*) ;
 int RegQueryInfoKeyW (int ,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *) ;
 int TRACE (char*,int ,...) ;
 int debugstr_w (int const*) ;
 int delete_key (int const*,int ,int const*) ;
 int open_key (int const*,int ,int const*,int ,int) ;

__attribute__((used)) static void delete_value( const MSICOMPONENT *comp, HKEY root, const WCHAR *path, const WCHAR *value )
{
    LONG res;
    HKEY hkey;
    DWORD num_subkeys, num_values;

    if ((hkey = open_key( comp, root, path, FALSE, KEY_SET_VALUE | KEY_QUERY_VALUE )))
    {
        if ((res = RegDeleteValueW( hkey, value )))
            TRACE("failed to delete value %s (%d)\n", debugstr_w(value), res);

        res = RegQueryInfoKeyW( hkey, ((void*)0), ((void*)0), ((void*)0), &num_subkeys, ((void*)0), ((void*)0), &num_values,
                                ((void*)0), ((void*)0), ((void*)0), ((void*)0) );
        RegCloseKey( hkey );
        if (!res && !num_subkeys && !num_values)
        {
            TRACE("removing empty key %s\n", debugstr_w(path));
            delete_key( comp, root, path );
        }
    }
}
