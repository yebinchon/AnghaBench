
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct view {size_t* result; TYPE_2__* table; } ;
typedef int WCHAR ;
typedef int VARIANT ;
typedef size_t UINT ;
struct TYPE_6__ {TYPE_1__* columns; } ;
struct TYPE_5__ {int type; } ;
typedef int LONGLONG ;
typedef scalar_t__ HRESULT ;
typedef int CIMTYPE ;


 int COL_FLAG_DYNAMIC ;
 int FIXME (char*) ;
 scalar_t__ S_OK ;
 scalar_t__ WBEM_E_FAILED ;
 scalar_t__ get_column_index (TYPE_2__*,int const*,size_t*) ;
 scalar_t__ is_method (TYPE_2__*,size_t) ;
 scalar_t__ set_value (TYPE_2__*,size_t,size_t,int ,int ) ;
 scalar_t__ to_longlong (int *,int *,int *) ;

HRESULT put_propval( const struct view *view, UINT index, const WCHAR *name, VARIANT *var, CIMTYPE type )
{
    HRESULT hr;
    UINT column, row = view->result[index];
    LONGLONG val;

    hr = get_column_index( view->table, name, &column );
    if (hr != S_OK)
    {
        FIXME("no support for creating new properties\n");
        return WBEM_E_FAILED;
    }
    if (is_method( view->table, column ) || !(view->table->columns[column].type & COL_FLAG_DYNAMIC))
        return WBEM_E_FAILED;

    hr = to_longlong( var, &val, &type );
    if (hr != S_OK) return hr;

    return set_value( view->table, row, column, val, type );
}
