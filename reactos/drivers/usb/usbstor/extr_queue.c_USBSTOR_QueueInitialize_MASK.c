#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_4__ {int /*<<< orphan*/  IsFDO; } ;
struct TYPE_5__ {int /*<<< orphan*/  NoPendingRequests; int /*<<< orphan*/  IrpListHead; int /*<<< orphan*/  IrpListLock; TYPE_1__ Common; } ;
typedef  TYPE_2__* PFDO_DEVICE_EXTENSION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NotificationEvent ; 
 int /*<<< orphan*/  TRUE ; 

VOID
FUNC4(
    PFDO_DEVICE_EXTENSION FDODeviceExtension)
{
    FUNC0(FDODeviceExtension->Common.IsFDO);
    FUNC3(&FDODeviceExtension->IrpListLock);
    FUNC1(&FDODeviceExtension->IrpListHead);
    FUNC2(&FDODeviceExtension->NoPendingRequests, NotificationEvent, TRUE);
}