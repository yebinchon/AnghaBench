
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct view {int* result; int count; int cond; TYPE_1__* table; } ;
typedef int UINT ;
struct TYPE_4__ {int num_rows; int (* fill ) (TYPE_1__*,int ) ;} ;
typedef scalar_t__ LONGLONG ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int S_OK ;
 int clear_table (TYPE_1__*) ;
 int eval_cond (TYPE_1__*,int,int ,scalar_t__*,int*) ;
 int* heap_alloc (int) ;
 int* heap_realloc (int*,int) ;
 int min (int,int) ;
 int stub1 (TYPE_1__*,int ) ;

HRESULT execute_view( struct view *view )
{
    UINT i, j = 0, len;

    if (!view->table) return S_OK;
    if (view->table->fill)
    {
        clear_table( view->table );
        view->table->fill( view->table, view->cond );
    }
    if (!view->table->num_rows) return S_OK;

    len = min( view->table->num_rows, 16 );
    if (!(view->result = heap_alloc( len * sizeof(UINT) ))) return E_OUTOFMEMORY;

    for (i = 0; i < view->table->num_rows; i++)
    {
        HRESULT hr;
        LONGLONG val = 0;
        UINT type;

        if (j >= len)
        {
            UINT *tmp;
            len *= 2;
            if (!(tmp = heap_realloc( view->result, len * sizeof(UINT) ))) return E_OUTOFMEMORY;
            view->result = tmp;
        }
        if ((hr = eval_cond( view->table, i, view->cond, &val, &type )) != S_OK) return hr;
        if (val) view->result[j++] = i;
    }
    view->count = j;
    return S_OK;
}
