
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef char WCHAR ;
typedef int UINT ;
struct TYPE_4__ {char* path; } ;
typedef TYPE_1__ MSIDATABASE ;
typedef int DWORD ;


 int ERROR_OUTOFMEMORY ;
 int GetFullPathNameW (char const*,int,char*,int *) ;
 int GetLastError () ;
 int URLIS_URL ;
 scalar_t__ UrlIsW (char const*,int ) ;
 char* msi_alloc (int) ;
 int msi_free (char*) ;
 int msi_set_property (TYPE_1__*,int ,char const*,int) ;
 int szOriginalDatabase ;

UINT msi_set_original_database_property( MSIDATABASE *db, const WCHAR *package )
{
    UINT r;

    if (UrlIsW( package, URLIS_URL ))
        r = msi_set_property( db, szOriginalDatabase, package, -1 );
    else if (package[0] == '#')
        r = msi_set_property( db, szOriginalDatabase, db->path, -1 );
    else
    {
        DWORD len;
        WCHAR *path;

        if (!(len = GetFullPathNameW( package, 0, ((void*)0), ((void*)0) ))) return GetLastError();
        if (!(path = msi_alloc( len * sizeof(WCHAR) ))) return ERROR_OUTOFMEMORY;
        len = GetFullPathNameW( package, len, path, ((void*)0) );
        r = msi_set_property( db, szOriginalDatabase, path, len );
        msi_free( path );
    }
    return r;
}
