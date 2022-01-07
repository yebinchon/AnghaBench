
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int cs; } ;
struct TYPE_5__ {unsigned int refs; int entry; int rw_lock; } ;
typedef TYPE_1__ RpcContextHandle ;
typedef TYPE_2__ RpcAssoc ;
typedef scalar_t__ NDR_SCONTEXT ;
typedef scalar_t__ BOOL ;


 int EnterCriticalSection (int *) ;
 int LeaveCriticalSection (int *) ;
 int RpcContextHandle_Destroy (TYPE_1__*) ;
 int RtlReleaseResource (int *) ;
 int list_remove (int *) ;

unsigned int RpcServerAssoc_ReleaseContextHandle(RpcAssoc *assoc, NDR_SCONTEXT SContext, BOOL release_lock)
{
    RpcContextHandle *context_handle = (RpcContextHandle *)SContext;
    unsigned int refs;

    if (release_lock)
        RtlReleaseResource(&context_handle->rw_lock);

    EnterCriticalSection(&assoc->cs);
    refs = --context_handle->refs;
    if (!refs)
        list_remove(&context_handle->entry);
    LeaveCriticalSection(&assoc->cs);

    if (!refs)
        RpcContextHandle_Destroy(context_handle);

    return refs;
}
