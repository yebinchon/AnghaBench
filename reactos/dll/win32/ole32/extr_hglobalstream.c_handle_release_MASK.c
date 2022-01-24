#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* DebugInfo; } ;
struct handle_wrapper {TYPE_2__ lock; int /*<<< orphan*/ * hglobal; scalar_t__ delete_on_release; int /*<<< orphan*/  ref; } ;
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_3__ {scalar_t__* Spare; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct handle_wrapper*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct handle_wrapper *handle)
{
    ULONG ref = FUNC4(&handle->ref);

    if (!ref)
    {
        if (handle->delete_on_release)
        {
            FUNC2(handle->hglobal);
            handle->hglobal = NULL;
        }

        handle->lock.DebugInfo->Spare[0] = 0;
        FUNC0(&handle->lock);
        FUNC3(FUNC1(), 0, handle);
    }
}