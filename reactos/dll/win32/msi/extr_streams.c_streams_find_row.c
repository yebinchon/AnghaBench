
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int WCHAR ;
typedef scalar_t__ UINT ;
struct TYPE_5__ {int view; TYPE_1__* db; } ;
struct TYPE_4__ {scalar_t__ num_streams; int strings; } ;
typedef TYPE_2__ MSISTREAMSVIEW ;
typedef int MSIRECORD ;


 scalar_t__ ERROR_FUNCTION_FAILED ;
 scalar_t__ ERROR_SUCCESS ;
 int * MSI_RecordGetString (int *,int) ;
 int STREAMS_fetch_int (int *,scalar_t__,int,scalar_t__*) ;
 scalar_t__ msi_string2id (int ,int const*,int,scalar_t__*) ;

__attribute__((used)) static UINT streams_find_row( MSISTREAMSVIEW *sv, MSIRECORD *rec, UINT *row )
{
    const WCHAR *str;
    UINT r, i, id, val;

    str = MSI_RecordGetString( rec, 1 );
    r = msi_string2id( sv->db->strings, str, -1, &id );
    if (r != ERROR_SUCCESS)
        return r;

    for (i = 0; i < sv->db->num_streams; i++)
    {
        STREAMS_fetch_int( &sv->view, i, 1, &val );

        if (val == id)
        {
            if (row) *row = i;
            return ERROR_SUCCESS;
        }
    }

    return ERROR_FUNCTION_FAILED;
}
