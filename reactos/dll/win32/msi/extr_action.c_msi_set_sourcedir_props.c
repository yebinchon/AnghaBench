
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WCHAR ;
typedef scalar_t__ UINT ;
struct TYPE_4__ {int db; } ;
typedef TYPE_1__ MSIPACKAGE ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ ERROR_OUTOFMEMORY ;
 scalar_t__ ERROR_SUCCESS ;
 int TRUE ;
 int lstrcpynW (int *,int *,int) ;
 int * msi_alloc (int) ;
 int * msi_dup_property (int ,int ) ;
 int msi_free (int *) ;
 int msi_reset_folders (TYPE_1__*,int ) ;
 scalar_t__ msi_set_property (int ,int ,int *,int) ;
 int * strrchrW (int *,char) ;
 int szOriginalDatabase ;
 int szSOURCEDIR ;
 int szSourceDir ;

UINT msi_set_sourcedir_props(MSIPACKAGE *package, BOOL replace)
{
    WCHAR *source, *check, *p, *db;
    DWORD len;

    if (!(db = msi_dup_property( package->db, szOriginalDatabase )))
        return ERROR_OUTOFMEMORY;

    if (!(p = strrchrW( db, '\\' )) && !(p = strrchrW( db, '/' )))
    {
        msi_free(db);
        return ERROR_SUCCESS;
    }
    len = p - db + 2;
    source = msi_alloc( len * sizeof(WCHAR) );
    lstrcpynW( source, db, len );
    msi_free( db );

    check = msi_dup_property( package->db, szSourceDir );
    if (!check || replace)
    {
        UINT r = msi_set_property( package->db, szSourceDir, source, -1 );
        if (r == ERROR_SUCCESS)
            msi_reset_folders( package, TRUE );
    }
    msi_free( check );

    check = msi_dup_property( package->db, szSOURCEDIR );
    if (!check || replace)
        msi_set_property( package->db, szSOURCEDIR, source, -1 );

    msi_free( check );
    msi_free( source );

    return ERROR_SUCCESS;
}
