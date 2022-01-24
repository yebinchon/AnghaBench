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
struct TYPE_6__ {int /*<<< orphan*/  Entry; int /*<<< orphan*/  HwInitData; } ;
struct TYPE_5__ {int /*<<< orphan*/  InitDataListHead; } ;
typedef  int /*<<< orphan*/  PHW_INITIALIZATION_DATA ;
typedef  TYPE_1__* PDRIVER_OBJECT_EXTENSION ;
typedef  TYPE_2__* PDRIVER_INIT_DATA ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  HW_INITIALIZATION_DATA ;
typedef  int /*<<< orphan*/  DRIVER_INIT_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NonPagedPool ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  STATUS_NO_MEMORY ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  TAG_INIT_DATA ; 

__attribute__((used)) static
NTSTATUS
FUNC4(
    PDRIVER_OBJECT_EXTENSION DriverExtension,
    PHW_INITIALIZATION_DATA HwInitializationData)
{
    PDRIVER_INIT_DATA InitData;

    FUNC0("PortAddDriverInitData()\n");

    InitData = FUNC1(NonPagedPool,
                                     sizeof(DRIVER_INIT_DATA),
                                     TAG_INIT_DATA);
    if (InitData == NULL)
        return STATUS_NO_MEMORY;

    FUNC3(&InitData->HwInitData,
                  HwInitializationData,
                  sizeof(HW_INITIALIZATION_DATA));

    FUNC2(&DriverExtension->InitDataListHead,
                   &InitData->Entry);

    return STATUS_SUCCESS;
}