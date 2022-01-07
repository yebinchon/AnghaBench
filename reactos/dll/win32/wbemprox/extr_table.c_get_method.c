
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct table {scalar_t__ num_rows; scalar_t__ num_cols; TYPE_1__* columns; } ;
typedef int class_method ;
typedef int WCHAR ;
typedef scalar_t__ UINT ;
struct TYPE_2__ {int type; int name; } ;
typedef scalar_t__ LONGLONG ;
typedef scalar_t__ INT_PTR ;
typedef int HRESULT ;


 int COL_FLAG_METHOD ;
 int S_OK ;
 int WBEM_E_INVALID_METHOD ;
 int get_value (struct table const*,scalar_t__,scalar_t__,scalar_t__*) ;
 int strcmpW (int ,int const*) ;

HRESULT get_method( const struct table *table, const WCHAR *name, class_method **func )
{
    UINT i, j;

    for (i = 0; i < table->num_rows; i++)
    {
        for (j = 0; j < table->num_cols; j++)
        {
            if (table->columns[j].type & COL_FLAG_METHOD && !strcmpW( table->columns[j].name, name ))
            {
                HRESULT hr;
                LONGLONG val;

                if ((hr = get_value( table, i, j, &val )) != S_OK) return hr;
                *func = (class_method *)(INT_PTR)val;
                return S_OK;
            }
        }
    }
    return WBEM_E_INVALID_METHOD;

}
