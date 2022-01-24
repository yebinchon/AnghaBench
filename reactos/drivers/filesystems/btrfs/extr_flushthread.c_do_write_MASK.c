#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int readonly; int /*<<< orphan*/  root_file; } ;
typedef  TYPE_1__ device_extension ;
typedef  int /*<<< orphan*/  PIRP ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  LIST_ENTRY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FSRTL_VOLUME_FORCED_CLOSED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

NTSTATUS FUNC7(device_extension* Vcb, PIRP Irp) {
    LIST_ENTRY rollback;
    NTSTATUS Status;

    FUNC2(&rollback);

    Status = FUNC6(Vcb, Irp, &rollback);

    if (!FUNC3(Status)) {
        FUNC0("do_write2 returned %08x, dropping into readonly mode\n", Status);
        Vcb->readonly = true;
        FUNC1(Vcb->root_file, FSRTL_VOLUME_FORCED_CLOSED);
        FUNC5(Vcb, &rollback);
    } else
        FUNC4(&rollback);

    return Status;
}