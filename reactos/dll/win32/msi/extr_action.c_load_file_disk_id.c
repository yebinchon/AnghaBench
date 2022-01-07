
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef char WCHAR ;
typedef int UINT ;
struct TYPE_10__ {int disk_id; int Sequence; } ;
struct TYPE_9__ {int db; } ;
struct TYPE_8__ {int hdr; } ;
typedef TYPE_1__ MSIRECORD ;
typedef TYPE_2__ MSIPACKAGE ;
typedef TYPE_3__ MSIFILE ;


 int ERROR_FUNCTION_FAILED ;
 int ERROR_SUCCESS ;
 TYPE_1__* MSI_QueryGetRecord (int ,char const*,int ) ;
 int MSI_RecordGetInteger (TYPE_1__*,int) ;
 int WARN (char*) ;
 int msiobj_release (int *) ;

__attribute__((used)) static UINT load_file_disk_id( MSIPACKAGE *package, MSIFILE *file )
{
    MSIRECORD *row;
    static const WCHAR query[] = {
        'S','E','L','E','C','T',' ','`','D','i','s','k','I','d','`',' ', 'F','R','O','M',' ',
        '`','M','e','d','i','a','`',' ','W','H','E','R','E',' ',
        '`','L','a','s','t','S','e','q','u','e','n','c','e','`',' ','>','=',' ','%','i',0};

    row = MSI_QueryGetRecord( package->db, query, file->Sequence );
    if (!row)
    {
        WARN("query failed\n");
        return ERROR_FUNCTION_FAILED;
    }

    file->disk_id = MSI_RecordGetInteger( row, 1 );
    msiobj_release( &row->hdr );
    return ERROR_SUCCESS;
}
