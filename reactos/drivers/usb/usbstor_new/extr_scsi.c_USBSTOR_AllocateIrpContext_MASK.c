#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ cbw; } ;
typedef  TYPE_1__* PIRP_CONTEXT ;
typedef  scalar_t__ PCBW ;
typedef  int /*<<< orphan*/  IRP_CONTEXT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  NonPagedPool ; 

PIRP_CONTEXT
FUNC2()
{
    PIRP_CONTEXT Context;

    //
    // allocate irp context
    //
    Context = (PIRP_CONTEXT)FUNC0(NonPagedPool, sizeof(IRP_CONTEXT));
    if (!Context)
    {
        //
        // no memory
        //
        return NULL;
    }

    //
    // allocate cbw block
    //
    Context->cbw = (PCBW)FUNC0(NonPagedPool, 512);
    if (!Context->cbw)
    {
        //
        // no memory
        //
        FUNC1(Context);
        return NULL;
    }

    //
    // done
    //
    return Context;

}