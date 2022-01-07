
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_5__ {scalar_t__ tempfolder; scalar_t__ deletefile; int storage; scalar_t__ strings; scalar_t__ path; } ;
typedef int MSIOBJECTHDR ;
typedef TYPE_1__ MSIDATABASE ;


 int DeleteFileW (scalar_t__) ;
 int IStorage_Release (int ) ;
 int free_cached_tables (TYPE_1__*) ;
 int free_streams (TYPE_1__*) ;
 int free_transforms (TYPE_1__*) ;
 int msi_destroy_stringtable (scalar_t__) ;
 int msi_free (scalar_t__) ;

__attribute__((used)) static VOID MSI_CloseDatabase( MSIOBJECTHDR *arg )
{
    MSIDATABASE *db = (MSIDATABASE *) arg;

    msi_free(db->path);
    free_streams( db );
    free_cached_tables( db );
    free_transforms( db );
    if (db->strings) msi_destroy_stringtable( db->strings );
    IStorage_Release( db->storage );
    if (db->deletefile)
    {
        DeleteFileW( db->deletefile );
        msi_free( db->deletefile );
    }
    msi_free( db->tempfolder );
}
