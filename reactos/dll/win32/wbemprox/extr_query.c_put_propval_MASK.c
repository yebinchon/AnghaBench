#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct view {size_t* result; TYPE_2__* table; } ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  VARIANT ;
typedef  size_t UINT ;
struct TYPE_6__ {TYPE_1__* columns; } ;
struct TYPE_5__ {int type; } ;
typedef  int /*<<< orphan*/  LONGLONG ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  CIMTYPE ;

/* Variables and functions */
 int COL_FLAG_DYNAMIC ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ S_OK ; 
 scalar_t__ WBEM_E_FAILED ; 
 scalar_t__ FUNC1 (TYPE_2__*,int /*<<< orphan*/  const*,size_t*) ; 
 scalar_t__ FUNC2 (TYPE_2__*,size_t) ; 
 scalar_t__ FUNC3 (TYPE_2__*,size_t,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

HRESULT FUNC5( const struct view *view, UINT index, const WCHAR *name, VARIANT *var, CIMTYPE type )
{
    HRESULT hr;
    UINT column, row = view->result[index];
    LONGLONG val;

    hr = FUNC1( view->table, name, &column );
    if (hr != S_OK)
    {
        FUNC0("no support for creating new properties\n");
        return WBEM_E_FAILED;
    }
    if (FUNC2( view->table, column ) || !(view->table->columns[column].type & COL_FLAG_DYNAMIC))
        return WBEM_E_FAILED;

    hr = FUNC4( var, &val, &type );
    if (hr != S_OK) return hr;

    return FUNC3( view->table, row, column, val, type );
}