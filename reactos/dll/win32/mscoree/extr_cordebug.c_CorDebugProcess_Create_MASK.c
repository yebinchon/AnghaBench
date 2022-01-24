#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  ICorDebug_iface; } ;
struct TYPE_9__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_11__ {int ref; TYPE_1__ ICorDebugProcess_iface; TYPE_4__* cordebug; int /*<<< orphan*/  dwProcessID; int /*<<< orphan*/  handle; int /*<<< orphan*/  thread; } ;
struct TYPE_10__ {int /*<<< orphan*/  dwProcessId; int /*<<< orphan*/  hThread; int /*<<< orphan*/  hProcess; } ;
typedef  TYPE_2__* LPPROCESS_INFORMATION ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_3__ DebugProcess ;
typedef  TYPE_4__ CorDebug ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DUPLICATE_SAME_ACCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  cordebugprocessVtbl ; 

__attribute__((used)) static HRESULT FUNC8(CorDebug *cordebug, IUnknown** ppUnk, LPPROCESS_INFORMATION lpProcessInformation)
{
    DebugProcess *This;

    This = FUNC5( FUNC4(), 0, sizeof *This );
    if ( !This )
        return E_OUTOFMEMORY;

    if(!FUNC1(FUNC3(), lpProcessInformation->hProcess,
                    FUNC3(), &This->handle, 0, FALSE, DUPLICATE_SAME_ACCESS))
    {
        FUNC2("Failed to duplicate process handle\n");
        FUNC6(FUNC4(), 0, This);
        return E_FAIL;
    }
    if(!FUNC1(FUNC3(), lpProcessInformation->hThread,
                    FUNC3(), &This->thread, 0, FALSE, DUPLICATE_SAME_ACCESS))
    {
        FUNC0(This->handle);

        FUNC2("Failed to duplicate thread handle\n");
        FUNC6(FUNC4(), 0, This);
        return E_FAIL;
    }

    This->ICorDebugProcess_iface.lpVtbl = &cordebugprocessVtbl;
    This->ref = 1;
    This->cordebug = cordebug;
    This->dwProcessID = lpProcessInformation->dwProcessId;

    if(This->cordebug)
        FUNC7(&This->cordebug->ICorDebug_iface);

    *ppUnk = (IUnknown*)&This->ICorDebugProcess_iface;

    return S_OK;
}