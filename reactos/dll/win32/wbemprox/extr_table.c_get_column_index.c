
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct table {size_t num_cols; TYPE_1__* columns; } ;
typedef int WCHAR ;
typedef size_t UINT ;
struct TYPE_2__ {int name; } ;
typedef int HRESULT ;


 int S_OK ;
 int WBEM_E_INVALID_QUERY ;
 int strcmpiW (int ,int const*) ;

HRESULT get_column_index( const struct table *table, const WCHAR *name, UINT *column )
{
    UINT i;
    for (i = 0; i < table->num_cols; i++)
    {
        if (!strcmpiW( table->columns[i].name, name ))
        {
            *column = i;
            return S_OK;
        }
    }
    return WBEM_E_INVALID_QUERY;
}
