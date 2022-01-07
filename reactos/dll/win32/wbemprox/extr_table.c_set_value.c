
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct table {TYPE_1__* columns; int * data; } ;
typedef int WCHAR ;
typedef void* UINT8 ;
typedef void* UINT64 ;
typedef void* UINT32 ;
typedef void* UINT16 ;
typedef size_t UINT ;
struct TYPE_2__ {int type; } ;
typedef void* LONGLONG ;
typedef scalar_t__ INT_PTR ;
typedef void* INT8 ;
typedef void* INT64 ;
typedef void* INT32 ;
typedef void* INT16 ;
typedef int HRESULT ;
typedef int CIMTYPE ;
typedef int BYTE ;
 int COL_TYPE_MASK ;
 int FIXME (char*,int) ;
 int S_OK ;
 int WBEM_E_FAILED ;
 int WBEM_E_TYPE_MISMATCH ;
 size_t get_column_offset (struct table const*,size_t) ;
 size_t get_row_size (struct table const*) ;

HRESULT set_value( const struct table *table, UINT row, UINT column, LONGLONG val,
                   CIMTYPE type )
{
    UINT col_offset, row_size;
    BYTE *ptr;

    if ((table->columns[column].type & COL_TYPE_MASK) != type) return WBEM_E_TYPE_MISMATCH;

    col_offset = get_column_offset( table, column );
    row_size = get_row_size( table );
    ptr = table->data + row * row_size + col_offset;

    switch (table->columns[column].type & COL_TYPE_MASK)
    {
    case 137:
    case 132:
        *(WCHAR **)ptr = (WCHAR *)(INT_PTR)val;
        break;
    case 133:
        *(INT8 *)ptr = val;
        break;
    case 128:
        *(UINT8 *)ptr = val;
        break;
    case 136:
        *(INT16 *)ptr = val;
        break;
    case 131:
        *(UINT16 *)ptr = val;
        break;
    case 135:
        *(INT32 *)ptr = val;
        break;
    case 130:
        *(UINT32 *)ptr = val;
        break;
    case 134:
        *(INT64 *)ptr = val;
        break;
    case 129:
        *(UINT64 *)ptr = val;
        break;
    default:
        FIXME("unhandled column type %u\n", type);
        return WBEM_E_FAILED;
    }
    return S_OK;
}
