
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
typedef TYPE_3__ MSIFILEPATCH ;


 int ERROR_FUNCTION_FAILED ;
 int ERROR_SUCCESS ;
 TYPE_1__* MSI_QueryGetRecord (int ,char const*,int ) ;
 int MSI_RecordGetInteger (TYPE_1__*,int) ;
 int WARN (char*) ;
 int msiobj_release (int *) ;

__attribute__((used)) static UINT load_patch_disk_id( MSIPACKAGE *package, MSIFILEPATCH *patch )
{
    static const WCHAR query[] =
        {'S','E','L','E','C','T',' ','`','D','i','s','k','I','d','`',' ', 'F','R','O','M',' ',
         '`','M','e','d','i','a','`',' ','W','H','E','R','E',' ',
         '`','L','a','s','t','S','e','q','u','e','n','c','e','`',' ','>','=',' ','%','u',0};
    MSIRECORD *rec;

    if (!(rec = MSI_QueryGetRecord( package->db, query, patch->Sequence )))
    {
        WARN("query failed\n");
        return ERROR_FUNCTION_FAILED;
    }

    patch->disk_id = MSI_RecordGetInteger( rec, 1 );
    msiobj_release( &rec->hdr );
    return ERROR_SUCCESS;
}
