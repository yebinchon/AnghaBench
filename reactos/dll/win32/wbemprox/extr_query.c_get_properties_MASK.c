#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct view {TYPE_2__* table; } ;
typedef  size_t UINT ;
struct TYPE_4__ {size_t num_cols; TYPE_1__* columns; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  SAFEARRAY ;
typedef  int LONG ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  BSTR ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ E_OUTOFMEMORY ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VT_BSTR ; 
 int WBEM_FLAG_NONSYSTEM_ONLY ; 
 int WBEM_FLAG_SYSTEM_ONLY ; 
 size_t FUNC5 (struct view const*) ; 
 scalar_t__ FUNC6 (TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct view const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

HRESULT FUNC9( const struct view *view, LONG flags, SAFEARRAY **props )
{
    SAFEARRAY *sa;
    BSTR str;
    UINT i, num_props = FUNC5( view );
    LONG j;

    if (!(sa = FUNC0( VT_BSTR, 0, num_props ))) return E_OUTOFMEMORY;

    for (i = 0, j = 0; i < view->table->num_cols; i++)
    {
        BOOL is_system;

        if (FUNC6( view->table, i )) continue;
        if (!FUNC7( view, view->table->columns[i].name )) continue;

        is_system = FUNC8( view->table->columns[i].name );
        if ((flags & WBEM_FLAG_NONSYSTEM_ONLY) && is_system) continue;
        else if ((flags & WBEM_FLAG_SYSTEM_ONLY) && !is_system) continue;

        str = FUNC3( view->table->columns[i].name );
        if (!str || FUNC2( sa, &j, str ) != S_OK)
        {
            FUNC4( str );
            FUNC1( sa );
            return E_OUTOFMEMORY;
        }
        FUNC4( str );
        j++;
    }
    *props = sa;
    return S_OK;
}