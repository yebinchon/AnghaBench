
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int cs; int context_handle_list; } ;
struct TYPE_5__ {int refs; int entry; int rw_lock; void* ctx_guard; } ;
typedef TYPE_1__ RpcContextHandle ;
typedef TYPE_2__ RpcAssoc ;
typedef int RPC_STATUS ;
typedef scalar_t__ NDR_SCONTEXT ;


 int EnterCriticalSection (int *) ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int LeaveCriticalSection (int *) ;
 int RPC_S_OK ;
 int RPC_S_OUT_OF_MEMORY ;
 int RtlAcquireResourceExclusive (int *,int ) ;
 int RtlInitializeResource (int *) ;
 int TRUE ;
 int list_add_tail (int *,int *) ;

RPC_STATUS RpcServerAssoc_AllocateContextHandle(RpcAssoc *assoc, void *CtxGuard,
                                                NDR_SCONTEXT *SContext)
{
    RpcContextHandle *context_handle;

    context_handle = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(*context_handle));
    if (!context_handle)
        return RPC_S_OUT_OF_MEMORY;

    context_handle->ctx_guard = CtxGuard;
    RtlInitializeResource(&context_handle->rw_lock);
    context_handle->refs = 1;



    RtlAcquireResourceExclusive(&context_handle->rw_lock, TRUE);

    EnterCriticalSection(&assoc->cs);
    list_add_tail(&assoc->context_handle_list, &context_handle->entry);
    LeaveCriticalSection(&assoc->cs);

    *SContext = (NDR_SCONTEXT)context_handle;
    return RPC_S_OK;
}
