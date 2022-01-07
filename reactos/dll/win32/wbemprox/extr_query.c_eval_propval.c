
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct table {TYPE_1__* columns; } ;
struct property {int name; } ;
typedef size_t UINT ;
struct TYPE_2__ {size_t type; } ;
typedef int LONGLONG ;
typedef scalar_t__ HRESULT ;


 size_t CIM_TYPE_MASK ;
 scalar_t__ S_OK ;
 scalar_t__ get_column_index (struct table const*,int ,size_t*) ;
 scalar_t__ get_value (struct table const*,size_t,size_t,int *) ;

__attribute__((used)) static HRESULT eval_propval( const struct table *table, UINT row, const struct property *propval,
                             LONGLONG *val, UINT *type )

{
    HRESULT hr;
    UINT column;

    hr = get_column_index( table, propval->name, &column );
    if (hr != S_OK)
        return hr;

    *type = table->columns[column].type & CIM_TYPE_MASK;
    return get_value( table, row, column, val );
}
