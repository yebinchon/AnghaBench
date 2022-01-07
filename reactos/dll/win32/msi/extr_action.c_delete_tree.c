
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int MSICOMPONENT ;
typedef scalar_t__ LONG ;
typedef int HKEY ;


 int FALSE ;
 int KEY_ALL_ACCESS ;
 int RegCloseKey (int ) ;
 scalar_t__ RegDeleteTreeW (int ,int *) ;
 int TRACE (char*,int ,scalar_t__) ;
 int debugstr_w (int const*) ;
 int delete_key (int const*,int ,int const*) ;
 int open_key (int const*,int ,int const*,int ,int ) ;

__attribute__((used)) static void delete_tree( const MSICOMPONENT *comp, HKEY root, const WCHAR *path )
{
    LONG res;
    HKEY hkey;

    if (!(hkey = open_key( comp, root, path, FALSE, KEY_ALL_ACCESS ))) return;
    res = RegDeleteTreeW( hkey, ((void*)0) );
    if (res) TRACE("failed to delete subtree of %s (%d)\n", debugstr_w(path), res);
    delete_key( comp, root, path );
    RegCloseKey( hkey );
}
