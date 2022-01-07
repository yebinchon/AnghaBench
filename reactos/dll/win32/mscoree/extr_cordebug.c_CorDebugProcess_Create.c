
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int ICorDebug_iface; } ;
struct TYPE_9__ {int * lpVtbl; } ;
struct TYPE_11__ {int ref; TYPE_1__ ICorDebugProcess_iface; TYPE_4__* cordebug; int dwProcessID; int handle; int thread; } ;
struct TYPE_10__ {int dwProcessId; int hThread; int hProcess; } ;
typedef TYPE_2__* LPPROCESS_INFORMATION ;
typedef int IUnknown ;
typedef int HRESULT ;
typedef TYPE_3__ DebugProcess ;
typedef TYPE_4__ CorDebug ;


 int CloseHandle (int ) ;
 int DUPLICATE_SAME_ACCESS ;
 int DuplicateHandle (int ,int ,int ,int *,int ,int ,int ) ;
 int ERR (char*) ;
 int E_FAIL ;
 int E_OUTOFMEMORY ;
 int FALSE ;
 int GetCurrentProcess () ;
 int GetProcessHeap () ;
 TYPE_3__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_3__*) ;
 int ICorDebug_AddRef (int *) ;
 int S_OK ;
 int cordebugprocessVtbl ;

__attribute__((used)) static HRESULT CorDebugProcess_Create(CorDebug *cordebug, IUnknown** ppUnk, LPPROCESS_INFORMATION lpProcessInformation)
{
    DebugProcess *This;

    This = HeapAlloc( GetProcessHeap(), 0, sizeof *This );
    if ( !This )
        return E_OUTOFMEMORY;

    if(!DuplicateHandle(GetCurrentProcess(), lpProcessInformation->hProcess,
                    GetCurrentProcess(), &This->handle, 0, FALSE, DUPLICATE_SAME_ACCESS))
    {
        ERR("Failed to duplicate process handle\n");
        HeapFree(GetProcessHeap(), 0, This);
        return E_FAIL;
    }
    if(!DuplicateHandle(GetCurrentProcess(), lpProcessInformation->hThread,
                    GetCurrentProcess(), &This->thread, 0, FALSE, DUPLICATE_SAME_ACCESS))
    {
        CloseHandle(This->handle);

        ERR("Failed to duplicate thread handle\n");
        HeapFree(GetProcessHeap(), 0, This);
        return E_FAIL;
    }

    This->ICorDebugProcess_iface.lpVtbl = &cordebugprocessVtbl;
    This->ref = 1;
    This->cordebug = cordebug;
    This->dwProcessID = lpProcessInformation->dwProcessId;

    if(This->cordebug)
        ICorDebug_AddRef(&This->cordebug->ICorDebug_iface);

    *ppUnk = (IUnknown*)&This->ICorDebugProcess_iface;

    return S_OK;
}
