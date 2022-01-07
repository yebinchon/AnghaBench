
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int UINT ;
typedef int LONG ;
typedef int HKEY ;
typedef int BOOL ;


 int ERROR_OUTOFMEMORY ;
 int RegCloseKey (int ) ;
 int RegDeleteKeyW (int ,int *) ;
 int * build_local_assembly_path (int const*) ;
 int msi_free (int *) ;
 int open_assemblies_key (int ,int ,int *) ;

__attribute__((used)) static LONG delete_local_assembly_key( UINT context, BOOL win32, const WCHAR *filename )
{
    LONG res;
    HKEY root;
    WCHAR *path;

    if (!(path = build_local_assembly_path( filename )))
        return ERROR_OUTOFMEMORY;

    if ((res = open_assemblies_key( context, win32, &root )))
    {
        msi_free( path );
        return res;
    }
    res = RegDeleteKeyW( root, path );
    RegCloseKey( root );
    msi_free( path );
    return res;
}
