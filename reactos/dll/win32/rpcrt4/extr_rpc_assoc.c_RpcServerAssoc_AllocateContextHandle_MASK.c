#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  cs; int /*<<< orphan*/  context_handle_list; } ;
struct TYPE_5__ {int refs; int /*<<< orphan*/  entry; int /*<<< orphan*/  rw_lock; void* ctx_guard; } ;
typedef  TYPE_1__ RpcContextHandle ;
typedef  TYPE_2__ RpcAssoc ;
typedef  int /*<<< orphan*/  RPC_STATUS ;
typedef  scalar_t__ NDR_SCONTEXT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RPC_S_OK ; 
 int /*<<< orphan*/  RPC_S_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

RPC_STATUS FUNC7(RpcAssoc *assoc, void *CtxGuard,
                                                NDR_SCONTEXT *SContext)
{
    RpcContextHandle *context_handle;

    context_handle = FUNC2(FUNC1(), HEAP_ZERO_MEMORY, sizeof(*context_handle));
    if (!context_handle)
        return RPC_S_OUT_OF_MEMORY;

    context_handle->ctx_guard = CtxGuard;
    FUNC5(&context_handle->rw_lock);
    context_handle->refs = 1;

    /* lock here to mirror unmarshall, so we don't need to special-case the
     * freeing of a non-marshalled context handle */
    FUNC4(&context_handle->rw_lock, TRUE);

    FUNC0(&assoc->cs);
    FUNC6(&assoc->context_handle_list, &context_handle->entry);
    FUNC3(&assoc->cs);

    *SContext = (NDR_SCONTEXT)context_handle;
    return RPC_S_OK;
}