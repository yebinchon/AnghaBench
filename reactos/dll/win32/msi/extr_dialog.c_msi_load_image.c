
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_4__ {int hdr; } ;
typedef TYPE_1__ MSIRECORD ;
typedef int MSIDATABASE ;
typedef int LPWSTR ;
typedef int LPCWSTR ;
typedef int * HANDLE ;


 int DeleteFileW (int ) ;
 scalar_t__ ERROR_SUCCESS ;
 int * LoadImageW (int ,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ MSI_RecordStreamToFile (TYPE_1__*,int,int ) ;
 int TRACE (char*,int *,int ,scalar_t__,scalar_t__,scalar_t__) ;
 int debugstr_w (int ) ;
 int msi_create_temp_file (int *) ;
 int msi_free (int ) ;
 TYPE_1__* msi_get_binary_record (int *,int ) ;
 int msiobj_release (int *) ;

__attribute__((used)) static HANDLE msi_load_image( MSIDATABASE *db, LPCWSTR name, UINT type,
                              UINT cx, UINT cy, UINT flags )
{
    MSIRECORD *rec;
    HANDLE himage = ((void*)0);
    LPWSTR tmp;
    UINT r;

    TRACE("%p %s %u %u %08x\n", db, debugstr_w(name), cx, cy, flags);

    if (!(tmp = msi_create_temp_file( db ))) return ((void*)0);

    rec = msi_get_binary_record( db, name );
    if( rec )
    {
        r = MSI_RecordStreamToFile( rec, 2, tmp );
        if( r == ERROR_SUCCESS )
        {
            himage = LoadImageW( 0, tmp, type, cx, cy, flags );
        }
        msiobj_release( &rec->hdr );
    }
    DeleteFileW( tmp );

    msi_free( tmp );
    return himage;
}
