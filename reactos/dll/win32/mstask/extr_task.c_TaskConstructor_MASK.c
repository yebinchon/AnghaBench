#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_9__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_7__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_8__ {int ref; int maxRunTime; TYPE_3__ ITask_iface; int /*<<< orphan*/ * accountName; int /*<<< orphan*/ * comment; int /*<<< orphan*/ * parameters; int /*<<< orphan*/ * applicationName; void* taskName; TYPE_1__ IPersistFile_iface; } ;
typedef  TYPE_2__ TaskImpl ;
typedef  TYPE_3__* LPVOID ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MSTASK_IPersistFileVtbl ; 
 int /*<<< orphan*/  MSTASK_ITaskVtbl ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dll_ref ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

HRESULT FUNC8(LPCWSTR pwszTaskName, LPVOID *ppObj)
{
    TaskImpl *This;
    int n;

    FUNC4("(%s, %p)\n", FUNC5(pwszTaskName), ppObj);

    This = FUNC1(FUNC0(), 0, sizeof(*This));
    if (!This)
        return E_OUTOFMEMORY;

    This->ITask_iface.lpVtbl = &MSTASK_ITaskVtbl;
    This->IPersistFile_iface.lpVtbl = &MSTASK_IPersistFileVtbl;
    This->ref = 1;
    n = (FUNC7(pwszTaskName) + 1) * sizeof(WCHAR);
    This->taskName = FUNC1(FUNC0(), 0, n);
    if (!This->taskName)
    {
        FUNC2(FUNC0(), 0, This);
        return E_OUTOFMEMORY;
    }
    FUNC6(This->taskName, pwszTaskName);
    This->applicationName = NULL;
    This->parameters = NULL;
    This->comment = NULL;
    This->accountName = NULL;

    /* Default time is 3 days = 259200000 ms */
    This->maxRunTime = 259200000;

    *ppObj = &This->ITask_iface;
    FUNC3(&dll_ref);
    return S_OK;
}