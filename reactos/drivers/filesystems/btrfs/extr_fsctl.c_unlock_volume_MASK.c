#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ locked_fileobj; int /*<<< orphan*/  locked; } ;
typedef  TYPE_1__ device_extension ;
struct TYPE_7__ {scalar_t__ FileObject; } ;
typedef  int /*<<< orphan*/  PIRP ;
typedef  TYPE_2__* PIO_STACK_LOCATION ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FSRTL_VOLUME_UNLOCK ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS_NOT_LOCKED ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static NTSTATUS FUNC4(device_extension* Vcb, PIRP Irp) {
    PIO_STACK_LOCATION IrpSp = FUNC1(Irp);

    FUNC2("FSCTL_UNLOCK_VOLUME\n");

    if (!Vcb->locked || IrpSp->FileObject != Vcb->locked_fileobj)
        return STATUS_NOT_LOCKED;

    FUNC2("unlocking volume\n");

    FUNC3(Vcb);

    FUNC0(IrpSp->FileObject, FSRTL_VOLUME_UNLOCK);

    return STATUS_SUCCESS;
}