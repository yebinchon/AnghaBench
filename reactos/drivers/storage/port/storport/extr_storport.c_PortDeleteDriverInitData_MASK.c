#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_10__ {int /*<<< orphan*/  Entry; } ;
struct TYPE_8__ {struct TYPE_8__* Flink; } ;
struct TYPE_9__ {TYPE_1__ InitDataListHead; } ;
typedef  TYPE_1__* PLIST_ENTRY ;
typedef  TYPE_2__* PDRIVER_OBJECT_EXTENSION ;
typedef  TYPE_3__* PDRIVER_INIT_DATA ;

/* Variables and functions */
 TYPE_3__* FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  DRIVER_INIT_DATA ; 
 int /*<<< orphan*/  Entry ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TAG_INIT_DATA ; 

__attribute__((used)) static
VOID
FUNC4(
    PDRIVER_OBJECT_EXTENSION DriverExtension)
{
    PDRIVER_INIT_DATA InitData;
    PLIST_ENTRY ListEntry;

    FUNC1("PortDeleteDriverInitData()\n");

    ListEntry = DriverExtension->InitDataListHead.Flink;
    while (ListEntry != &DriverExtension->InitDataListHead)
    {
        InitData = FUNC0(ListEntry,
                                     DRIVER_INIT_DATA,
                                     Entry);

        FUNC3(&InitData->Entry);

        FUNC2(InitData,
                          TAG_INIT_DATA);

        ListEntry = DriverExtension->InitDataListHead.Flink;
    }
}