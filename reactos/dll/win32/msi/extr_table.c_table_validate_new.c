
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WCHAR ;
typedef size_t UINT ;
struct TYPE_6__ {size_t num_cols; TYPE_1__* columns; } ;
struct TYPE_5__ {int type; } ;
typedef TYPE_2__ MSITABLEVIEW ;
typedef int MSIRECORD ;


 size_t ERROR_FUNCTION_FAILED ;
 size_t ERROR_INVALID_DATA ;
 size_t ERROR_SUCCESS ;
 scalar_t__ MSITYPE_IS_BINARY (int) ;
 int MSITYPE_NULLABLE ;
 int MSITYPE_STRING ;
 size_t MSI_NULL_INTEGER ;
 size_t MSI_RecordGetInteger (int *,size_t) ;
 int TRACE (char*) ;
 int * msi_record_get_string (int *,size_t,int*) ;
 size_t msi_table_find_row (TYPE_2__*,int *,size_t*,size_t*) ;

__attribute__((used)) static UINT table_validate_new( MSITABLEVIEW *tv, MSIRECORD *rec, UINT *column )
{
    UINT r, row, i;


    for( i = 0; i < tv->num_cols; i++ )
    {
        if ( tv->columns[i].type & MSITYPE_NULLABLE )
            continue;

        if ( MSITYPE_IS_BINARY(tv->columns[i].type) )
            TRACE("skipping binary column\n");
        else if ( tv->columns[i].type & MSITYPE_STRING )
        {
            int len;
            const WCHAR *str = msi_record_get_string( rec, i+1, &len );

            if (!str || (!str[0] && !len))
            {
                if (column) *column = i;
                return ERROR_INVALID_DATA;
            }
        }
        else
        {
            UINT n;

            n = MSI_RecordGetInteger( rec, i+1 );
            if (n == MSI_NULL_INTEGER)
            {
                if (column) *column = i;
                return ERROR_INVALID_DATA;
            }
        }
    }


    r = msi_table_find_row( tv, rec, &row, column );
    if (r == ERROR_SUCCESS)
        return ERROR_FUNCTION_FAILED;

    return ERROR_SUCCESS;
}
