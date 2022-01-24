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
struct TYPE_6__ {int /*<<< orphan*/  cs; } ;
struct TYPE_5__ {unsigned int refs; int /*<<< orphan*/  entry; int /*<<< orphan*/  rw_lock; } ;
typedef  TYPE_1__ RpcContextHandle ;
typedef  TYPE_2__ RpcAssoc ;
typedef  scalar_t__ NDR_SCONTEXT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

unsigned int FUNC5(RpcAssoc *assoc, NDR_SCONTEXT SContext, BOOL release_lock)
{
    RpcContextHandle *context_handle = (RpcContextHandle *)SContext;
    unsigned int refs;

    if (release_lock)
        FUNC3(&context_handle->rw_lock);

    FUNC0(&assoc->cs);
    refs = --context_handle->refs;
    if (!refs)
        FUNC4(&context_handle->entry);
    FUNC1(&assoc->cs);

    if (!refs)
        FUNC2(context_handle);

    return refs;
}