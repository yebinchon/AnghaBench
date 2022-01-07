
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rw_lock; scalar_t__ user_context; int (* rundown_routine ) (scalar_t__) ;} ;
typedef TYPE_1__ RpcContextHandle ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int RtlDeleteResource (int *) ;
 int TRACE (char*,...) ;
 int stub1 (scalar_t__) ;

__attribute__((used)) static void RpcContextHandle_Destroy(RpcContextHandle *context_handle)
{
    TRACE("freeing %p\n", context_handle);

    if (context_handle->user_context && context_handle->rundown_routine)
    {
        TRACE("calling rundown routine %p with user context %p\n",
              context_handle->rundown_routine, context_handle->user_context);
        context_handle->rundown_routine(context_handle->user_context);
    }

    RtlDeleteResource(&context_handle->rw_lock);

    HeapFree(GetProcessHeap(), 0, context_handle);
}
