
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* ctx_guard; } ;
typedef TYPE_1__ RpcContextHandle ;
typedef scalar_t__ NDR_SCONTEXT ;
typedef int BOOL ;



BOOL RpcContextHandle_IsGuardCorrect(NDR_SCONTEXT SContext, void *CtxGuard)
{
    RpcContextHandle *context_handle = (RpcContextHandle *)SContext;
    return context_handle->ctx_guard == CtxGuard;
}
