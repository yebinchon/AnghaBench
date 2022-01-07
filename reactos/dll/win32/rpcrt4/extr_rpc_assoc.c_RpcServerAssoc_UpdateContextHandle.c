
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int cs; } ;
struct TYPE_5__ {int uuid; int rundown_routine; int refs; } ;
typedef TYPE_1__ RpcContextHandle ;
typedef TYPE_2__ RpcAssoc ;
typedef int RPC_STATUS ;
typedef scalar_t__ NDR_SCONTEXT ;
typedef int NDR_RUNDOWN ;


 int ERROR_INVALID_HANDLE ;
 int EnterCriticalSection (int *) ;
 int LeaveCriticalSection (int *) ;
 int RPC_S_OK ;
 int RpcContextHandle_IsGuardCorrect (scalar_t__,void*) ;
 int TRACE (char*,int ,TYPE_1__*) ;
 int UuidCreate (int *) ;
 scalar_t__ UuidIsNil (int *,int *) ;
 int debugstr_guid (int *) ;

RPC_STATUS RpcServerAssoc_UpdateContextHandle(RpcAssoc *assoc,
                                              NDR_SCONTEXT SContext,
                                              void *CtxGuard,
                                              NDR_RUNDOWN rundown_routine)
{
    RpcContextHandle *context_handle = (RpcContextHandle *)SContext;
    RPC_STATUS status;

    if (!RpcContextHandle_IsGuardCorrect((NDR_SCONTEXT)context_handle, CtxGuard))
        return ERROR_INVALID_HANDLE;

    EnterCriticalSection(&assoc->cs);
    if (UuidIsNil(&context_handle->uuid, &status))
    {

        context_handle->refs++;
        UuidCreate(&context_handle->uuid);
        context_handle->rundown_routine = rundown_routine;
        TRACE("allocated uuid %s for context handle %p\n",
              debugstr_guid(&context_handle->uuid), context_handle);
    }
    LeaveCriticalSection(&assoc->cs);

    return RPC_S_OK;
}
