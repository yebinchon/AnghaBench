
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_11__ {int type; } ;
struct TYPE_10__ {int storage; } ;
struct TYPE_9__ {scalar_t__ persistent; size_t col_count; size_t row_count; int name; int ** data; TYPE_6__* colinfo; int * data_persistent; } ;
typedef TYPE_1__ MSITABLE ;
typedef TYPE_2__ MSIDATABASE ;
typedef int BYTE ;


 int ERR (char*,size_t) ;
 size_t ERROR_FUNCTION_FAILED ;
 size_t ERROR_NOT_ENOUGH_MEMORY ;
 size_t ERROR_SUCCESS ;
 size_t LONG_STR_BYTES ;
 scalar_t__ MSICONDITION_FALSE ;
 int MSITYPE_STRING ;
 int TRACE (char*,size_t) ;
 int TRUE ;
 size_t bytes_per_column (TYPE_2__*,TYPE_6__*,size_t) ;
 size_t debugstr_w (int ) ;
 int * msi_alloc_zero (size_t) ;
 int msi_free (int *) ;
 size_t msi_table_get_row_size (TYPE_2__*,TYPE_6__*,size_t,size_t) ;
 size_t read_table_int (int **,size_t,size_t,size_t) ;
 size_t write_stream_data (int ,int ,int *,size_t,int ) ;

__attribute__((used)) static UINT save_table( MSIDATABASE *db, const MSITABLE *t, UINT bytes_per_strref )
{
    BYTE *rawdata = ((void*)0);
    UINT rawsize, i, j, row_size, row_count;
    UINT r = ERROR_FUNCTION_FAILED;


    if( t->persistent == MSICONDITION_FALSE )
        return ERROR_SUCCESS;

    TRACE("Saving %s\n", debugstr_w( t->name ) );

    row_size = msi_table_get_row_size( db, t->colinfo, t->col_count, bytes_per_strref );
    row_count = t->row_count;
    for (i = 0; i < t->row_count; i++)
    {
        if (!t->data_persistent[i])
        {
            row_count = 1;
            break;
        }
    }
    rawsize = row_count * row_size;
    rawdata = msi_alloc_zero( rawsize );
    if( !rawdata )
    {
        r = ERROR_NOT_ENOUGH_MEMORY;
        goto err;
    }

    rawsize = 0;
    for (i = 0; i < row_count; i++)
    {
        UINT ofs = 0, ofs_mem = 0;

        if (!t->data_persistent[i]) break;

        for (j = 0; j < t->col_count; j++)
        {
            UINT m = bytes_per_column( db, &t->colinfo[j], LONG_STR_BYTES );
            UINT n = bytes_per_column( db, &t->colinfo[j], bytes_per_strref );
            UINT k;

            if (n != 2 && n != 3 && n != 4)
            {
                ERR("oops - unknown column width %d\n", n);
                goto err;
            }
            if (t->colinfo[j].type & MSITYPE_STRING && n < m)
            {
                UINT id = read_table_int( t->data, i, ofs_mem, LONG_STR_BYTES );
                if (id > 1 << bytes_per_strref * 8)
                {
                    ERR("string id %u out of range\n", id);
                    goto err;
                }
            }
            for (k = 0; k < n; k++)
            {
                rawdata[ofs * row_count + i * n + k] = t->data[i][ofs_mem + k];
            }
            ofs_mem += m;
            ofs += n;
        }
        rawsize += row_size;
    }

    TRACE("writing %d bytes\n", rawsize);
    r = write_stream_data( db->storage, t->name, rawdata, rawsize, TRUE );

err:
    msi_free( rawdata );
    return r;
}
