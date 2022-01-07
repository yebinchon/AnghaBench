
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct table {TYPE_1__* columns; int * data; } ;
typedef int WCHAR ;
typedef int UINT8 ;
typedef int UINT64 ;
typedef int UINT32 ;
typedef int UINT16 ;
typedef int UINT ;
struct TYPE_2__ {int type; } ;
typedef int LONGLONG ;
typedef int INT_PTR ;
typedef int INT8 ;
typedef int INT64 ;
typedef int INT32 ;
typedef int INT16 ;
typedef int HRESULT ;
typedef int BYTE ;




 int CIM_FLAG_ARRAY ;
 int COL_TYPE_MASK ;
 int ERR (char*,int) ;
 int S_OK ;
 int get_column_offset (struct table const*,int) ;
 int get_row_size (struct table const*) ;

HRESULT get_value( const struct table *table, UINT row, UINT column, LONGLONG *val )
{
    UINT col_offset, row_size;
    const BYTE *ptr;

    col_offset = get_column_offset( table, column );
    row_size = get_row_size( table );
    ptr = table->data + row * row_size + col_offset;

    if (table->columns[column].type & CIM_FLAG_ARRAY)
    {
        *val = (INT_PTR)*(const void **)ptr;
        return S_OK;
    }
    switch (table->columns[column].type & COL_TYPE_MASK)
    {
    case 138:
        *val = *(const int *)ptr;
        break;
    case 137:
    case 132:
        *val = (INT_PTR)*(const WCHAR **)ptr;
        break;
    case 133:
        *val = *(const INT8 *)ptr;
        break;
    case 128:
        *val = *(const UINT8 *)ptr;
        break;
    case 136:
        *val = *(const INT16 *)ptr;
        break;
    case 131:
        *val = *(const UINT16 *)ptr;
        break;
    case 135:
        *val = *(const INT32 *)ptr;
        break;
    case 130:
        *val = *(const UINT32 *)ptr;
        break;
    case 134:
        *val = *(const INT64 *)ptr;
        break;
    case 129:
        *val = *(const UINT64 *)ptr;
        break;
    default:
        ERR("invalid column type %u\n", table->columns[column].type & COL_TYPE_MASK);
        *val = 0;
        break;
    }
    return S_OK;
}
