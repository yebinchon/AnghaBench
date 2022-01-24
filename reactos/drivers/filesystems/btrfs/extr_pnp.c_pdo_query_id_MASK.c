#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pdo_device_extension ;
struct TYPE_11__ {int IdType; } ;
struct TYPE_12__ {TYPE_1__ QueryId; } ;
struct TYPE_15__ {TYPE_2__ Parameters; } ;
struct TYPE_13__ {int /*<<< orphan*/  Status; } ;
struct TYPE_14__ {TYPE_3__ IoStatus; } ;
typedef  TYPE_4__* PIRP ;
typedef  TYPE_5__* PIO_STACK_LOCATION ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
#define  BusQueryDeviceID 129 
#define  BusQueryHardwareIDs 128 
 TYPE_5__* FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 

__attribute__((used)) static NTSTATUS FUNC4(pdo_device_extension* pdode, PIRP Irp) {
    PIO_STACK_LOCATION IrpSp = FUNC0(Irp);

    switch (IrpSp->Parameters.QueryId.IdType) {
        case BusQueryDeviceID:
            FUNC1("BusQueryDeviceID\n");
            return FUNC2(pdode, Irp);

        case BusQueryHardwareIDs:
            FUNC1("BusQueryHardwareIDs\n");
            return FUNC3(Irp);

        default:
            break;
    }

    return Irp->IoStatus.Status;
}