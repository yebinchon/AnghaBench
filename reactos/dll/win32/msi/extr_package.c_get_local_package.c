
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int WCHAR ;
typedef int UINT ;
struct TYPE_5__ {int hdr; } ;
typedef TYPE_1__ MSIDATABASE ;


 int ERROR_FILE_NOT_FOUND ;
 int ERROR_INSTALL_PACKAGE_INVALID ;
 int ERROR_SUCCESS ;
 scalar_t__ GetFileAttributesW (int const*) ;
 scalar_t__ INVALID_FILE_ATTRIBUTES ;
 int MSIDBOPEN_READONLY ;
 int MSI_OpenDatabaseW (int const*,int ,TYPE_1__**) ;
 int * get_package_code (TYPE_1__*) ;
 int * get_product_code (TYPE_1__*) ;
 int get_registered_local_package (int *,int *,int *) ;
 int msi_free (int *) ;
 int msiobj_release (int *) ;

__attribute__((used)) static UINT get_local_package( const WCHAR *filename, WCHAR *localfile )
{
    WCHAR *product_code, *package_code;
    MSIDATABASE *db;
    UINT r;

    if ((r = MSI_OpenDatabaseW( filename, MSIDBOPEN_READONLY, &db )) != ERROR_SUCCESS)
    {
        if (GetFileAttributesW( filename ) == INVALID_FILE_ATTRIBUTES)
            return ERROR_FILE_NOT_FOUND;
        return r;
    }
    if (!(product_code = get_product_code( db )))
    {
        msiobj_release( &db->hdr );
        return ERROR_INSTALL_PACKAGE_INVALID;
    }
    if (!(package_code = get_package_code( db )))
    {
        msi_free( product_code );
        msiobj_release( &db->hdr );
        return ERROR_INSTALL_PACKAGE_INVALID;
    }
    r = get_registered_local_package( product_code, package_code, localfile );
    msi_free( package_code );
    msi_free( product_code );
    msiobj_release( &db->hdr );
    return r;
}
