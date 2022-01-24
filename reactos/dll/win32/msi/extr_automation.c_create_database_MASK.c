#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  IDispatch_iface; } ;
typedef  int /*<<< orphan*/  MSIHANDLE ;
typedef  int /*<<< orphan*/  IDispatch ;
typedef  scalar_t__ HRESULT ;
typedef  TYPE_1__ AutomationObject ;

/* Variables and functions */
 int /*<<< orphan*/  Database_tid ; 
 scalar_t__ E_OUTOFMEMORY ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static HRESULT FUNC4(MSIHANDLE msiHandle, IDispatch **dispatch)
{
    AutomationObject *database;
    HRESULT hr;

    FUNC0("(%d %p)\n", msiHandle, dispatch);

    database = FUNC2(sizeof(AutomationObject));
    if (!database) return E_OUTOFMEMORY;

    hr = FUNC1(database, msiHandle, Database_tid);
    if (hr != S_OK)
    {
        FUNC3(database);
        return hr;
    }

    *dispatch = &database->IDispatch_iface;

    return hr;
}