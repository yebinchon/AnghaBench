
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tmp ;
typedef int WCHAR ;
typedef int UINT ;
struct TYPE_4__ {int tempfolder; } ;
typedef TYPE_1__ MSIDATABASE ;


 scalar_t__ FILE_ATTRIBUTE_DIRECTORY ;
 scalar_t__ GetFileAttributesW (int *) ;
 int GetTempFileNameW (int ,int ,int ,int *) ;
 int GetTempPathW (int,int *) ;
 int MAX_PATH ;
 int * msi_alloc (int) ;
 int msi_free (int *) ;
 scalar_t__ msi_get_property (TYPE_1__*,int ,int *,int*) ;
 int strdupW (int *) ;
 int strlenW (int ) ;
 int szMsi ;
 int szTempFolder ;

WCHAR *msi_create_temp_file( MSIDATABASE *db )
{
    WCHAR *ret;

    if (!db->tempfolder)
    {
        WCHAR tmp[MAX_PATH];
        UINT len = sizeof(tmp)/sizeof(tmp[0]);

        if (msi_get_property( db, szTempFolder, tmp, &len ) ||
            GetFileAttributesW( tmp ) != FILE_ATTRIBUTE_DIRECTORY)
        {
            GetTempPathW( MAX_PATH, tmp );
        }
        if (!(db->tempfolder = strdupW( tmp ))) return ((void*)0);
    }

    if ((ret = msi_alloc( (strlenW( db->tempfolder ) + 20) * sizeof(WCHAR) )))
    {
        if (!GetTempFileNameW( db->tempfolder, szMsi, 0, ret ))
        {
            msi_free( ret );
            return ((void*)0);
        }
    }

    return ret;
}
