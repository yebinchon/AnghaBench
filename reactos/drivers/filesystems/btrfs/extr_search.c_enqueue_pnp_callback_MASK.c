#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int Length; int MaximumLength; int /*<<< orphan*/ * Buffer; } ;
struct TYPE_8__ {scalar_t__ work_item; int /*<<< orphan*/  func; TYPE_1__ name; int /*<<< orphan*/  DriverObject; } ;
typedef  TYPE_2__ pnp_callback_context ;
typedef  int /*<<< orphan*/  pnp_callback ;
struct TYPE_9__ {int Length; int /*<<< orphan*/  Buffer; } ;
typedef  TYPE_3__* PUNICODE_STRING ;
typedef  scalar_t__ PIO_WORKITEM ;
typedef  int /*<<< orphan*/  PDRIVER_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOC_TAG ; 
 int /*<<< orphan*/  DelayedWorkQueue ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  PagedPool ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  do_pnp_callback ; 
 int /*<<< orphan*/  master_devobj ; 

__attribute__((used)) static void FUNC7(PDRIVER_OBJECT DriverObject, PUNICODE_STRING name, pnp_callback func) {
    PIO_WORKITEM work_item;
    pnp_callback_context* context;

    work_item = FUNC3(master_devobj);
    if (!work_item) {
        FUNC0("out of memory\n");
        return;
    }

    context = FUNC1(PagedPool, sizeof(pnp_callback_context), ALLOC_TAG);

    if (!context) {
        FUNC0("out of memory\n");
        FUNC4(work_item);
        return;
    }

    context->DriverObject = DriverObject;

    if (name->Length > 0) {
        context->name.Buffer = FUNC1(PagedPool, name->Length, ALLOC_TAG);
        if (!context->name.Buffer) {
            FUNC0("out of memory\n");
            FUNC2(context);
            FUNC4(work_item);
            return;
        }

        FUNC6(context->name.Buffer, name->Buffer, name->Length);
        context->name.Length = context->name.MaximumLength = name->Length;
    } else {
        context->name.Length = context->name.MaximumLength = 0;
        context->name.Buffer = NULL;
    }

    context->func = func;
    context->work_item = work_item;

    FUNC5(work_item, do_pnp_callback, DelayedWorkQueue, context);
}