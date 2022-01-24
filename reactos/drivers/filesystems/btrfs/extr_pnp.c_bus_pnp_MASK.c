#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_22__ {int /*<<< orphan*/  attached_device; } ;
typedef  TYPE_5__ bus_device_extension ;
struct TYPE_19__ {int /*<<< orphan*/  IdType; } ;
struct TYPE_18__ {int /*<<< orphan*/  Type; } ;
struct TYPE_20__ {TYPE_2__ QueryId; TYPE_1__ QueryDeviceRelations; } ;
struct TYPE_24__ {int MinorFunction; TYPE_3__ Parameters; } ;
struct TYPE_21__ {void* Status; } ;
struct TYPE_23__ {TYPE_4__ IoStatus; } ;
typedef  TYPE_6__* PIRP ;
typedef  TYPE_7__* PIO_STACK_LOCATION ;
typedef  void* NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  BusQueryHardwareIDs ; 
 int /*<<< orphan*/  BusRelations ; 
 int /*<<< orphan*/  IO_NO_INCREMENT ; 
#define  IRP_MN_QUERY_CAPABILITIES 130 
#define  IRP_MN_QUERY_DEVICE_RELATIONS 129 
#define  IRP_MN_QUERY_ID 128 
 void* FUNC0 (int /*<<< orphan*/ ,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC2 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 void* FUNC5 (TYPE_6__*) ; 
 void* FUNC6 (TYPE_6__*) ; 
 void* FUNC7 (TYPE_6__*) ; 
 int /*<<< orphan*/  no_pnp ; 

__attribute__((used)) static NTSTATUS FUNC8(bus_device_extension* bde, PIRP Irp) {
    NTSTATUS Status = Irp->IoStatus.Status;
    PIO_STACK_LOCATION IrpSp = FUNC2(Irp);
    bool handled = false;

    switch (IrpSp->MinorFunction) {
        case IRP_MN_QUERY_CAPABILITIES:
            Status = FUNC5(Irp);
            handled = true;
            break;

        case IRP_MN_QUERY_DEVICE_RELATIONS:
            if (IrpSp->Parameters.QueryDeviceRelations.Type != BusRelations || no_pnp)
                break;

            Status = FUNC6(Irp);
            handled = true;
            break;

        case IRP_MN_QUERY_ID:
            if (IrpSp->Parameters.QueryId.IdType != BusQueryHardwareIDs)
                break;

            Status = FUNC7(Irp);
            handled = true;
            break;
    }

    if (!FUNC4(Status) && handled) {
        Irp->IoStatus.Status = Status;
        FUNC1(Irp, IO_NO_INCREMENT);

        return Status;
    }

    Irp->IoStatus.Status = Status;

    FUNC3(Irp);
    return FUNC0(bde->attached_device, Irp);
}