
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct tagMSIVIEW {int dummy; } ;
typedef int WCHAR ;
typedef int UINT ;
struct TYPE_11__ {int strings; } ;
struct TYPE_10__ {int num_cols; int view; TYPE_6__* db; TYPE_2__* columns; TYPE_1__* table; } ;
struct TYPE_9__ {int type; } ;
struct TYPE_8__ {scalar_t__ persistent; scalar_t__* data_persistent; } ;
typedef TYPE_3__ MSITABLEVIEW ;
typedef int MSIRECORD ;
typedef int LPWSTR ;
typedef int IStream ;
typedef int BOOL ;


 int ERROR_FUNCTION_FAILED ;
 int ERROR_INVALID_PARAMETER ;
 int ERROR_SUCCESS ;
 int IStream_Release (int *) ;
 scalar_t__ MSICONDITION_FALSE ;
 scalar_t__ MSITYPE_IS_BINARY (int) ;
 int MSITYPE_STRING ;
 int MSI_RecordGetIStream (int *,int,int **) ;
 int MSI_RecordIsNull (int *,int) ;
 int StringNonPersistent ;
 int StringPersistent ;
 int TABLE_fetch_int (int *,int,int,int*) ;
 int TABLE_set_int (TYPE_3__*,int,int,int) ;
 int add_stream (TYPE_6__*,int ,int *) ;
 int get_stream_name (TYPE_3__*,int,int *) ;
 int get_table_value_from_record (TYPE_3__*,int *,int,int*) ;
 int msi_add_string (int ,int const*,int,int ) ;
 int msi_free (int ) ;
 int * msi_record_get_string (int *,int,int*) ;

__attribute__((used)) static UINT TABLE_set_row( struct tagMSIVIEW *view, UINT row, MSIRECORD *rec, UINT mask )
{
    MSITABLEVIEW *tv = (MSITABLEVIEW*)view;
    UINT i, val, r = ERROR_SUCCESS;

    if ( !tv->table )
        return ERROR_INVALID_PARAMETER;


    if ( mask >= (1<<tv->num_cols) )
        return ERROR_INVALID_PARAMETER;

    for ( i = 0; i < tv->num_cols; i++ )
    {
        BOOL persistent;


        if ( !(mask&(1<<i)) )
            continue;

        persistent = (tv->table->persistent != MSICONDITION_FALSE) &&
                     (tv->table->data_persistent[row]);


        val = 0;
        if ( !MSI_RecordIsNull( rec, i + 1 ) )
        {
            r = get_table_value_from_record (tv, rec, i + 1, &val);
            if ( MSITYPE_IS_BINARY(tv->columns[ i ].type) )
            {
                IStream *stm;
                LPWSTR stname;

                if ( r != ERROR_SUCCESS )
                    return ERROR_FUNCTION_FAILED;

                r = MSI_RecordGetIStream( rec, i + 1, &stm );
                if ( r != ERROR_SUCCESS )
                    return r;

                r = get_stream_name( tv, row, &stname );
                if ( r != ERROR_SUCCESS )
                {
                    IStream_Release( stm );
                    return r;
                }

                r = add_stream( tv->db, stname, stm );
                IStream_Release( stm );
                msi_free ( stname );

                if ( r != ERROR_SUCCESS )
                    return r;
            }
            else if ( tv->columns[i].type & MSITYPE_STRING )
            {
                UINT x;

                if ( r != ERROR_SUCCESS )
                {
                    int len;
                    const WCHAR *sval = msi_record_get_string( rec, i + 1, &len );
                    val = msi_add_string( tv->db->strings, sval, len,
                                          persistent ? StringPersistent : StringNonPersistent );
                }
                else
                {
                    TABLE_fetch_int(&tv->view, row, i + 1, &x);
                    if (val == x)
                        continue;
                }
            }
            else
            {
                if ( r != ERROR_SUCCESS )
                    return ERROR_FUNCTION_FAILED;
            }
        }

        r = TABLE_set_int( tv, row, i+1, val );
        if ( r != ERROR_SUCCESS )
            break;
    }
    return r;
}
