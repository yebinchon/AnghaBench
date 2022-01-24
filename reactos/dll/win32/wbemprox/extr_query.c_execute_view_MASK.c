#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct view {int* result; int count; int /*<<< orphan*/  cond; TYPE_1__* table; } ;
typedef  int UINT ;
struct TYPE_4__ {int num_rows; int /*<<< orphan*/  (* fill ) (TYPE_1__*,int /*<<< orphan*/ ) ;} ;
typedef  scalar_t__ LONGLONG ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int /*<<< orphan*/ ,scalar_t__*,int*) ; 
 int* FUNC2 (int) ; 
 int* FUNC3 (int*,int) ; 
 int FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 

HRESULT FUNC6( struct view *view )
{
    UINT i, j = 0, len;

    if (!view->table) return S_OK;
    if (view->table->fill)
    {
        FUNC0( view->table );
        view->table->fill( view->table, view->cond );
    }
    if (!view->table->num_rows) return S_OK;

    len = FUNC4( view->table->num_rows, 16 );
    if (!(view->result = FUNC2( len * sizeof(UINT) ))) return E_OUTOFMEMORY;

    for (i = 0; i < view->table->num_rows; i++)
    {
        HRESULT hr;
        LONGLONG val = 0;
        UINT type;

        if (j >= len)
        {
            UINT *tmp;
            len *= 2;
            if (!(tmp = FUNC3( view->result, len * sizeof(UINT) ))) return E_OUTOFMEMORY;
            view->result = tmp;
        }
        if ((hr = FUNC1( view->table, i, view->cond, &val, &type )) != S_OK) return hr;
        if (val) view->result[j++] = i;
    }
    view->count = j;
    return S_OK;
}