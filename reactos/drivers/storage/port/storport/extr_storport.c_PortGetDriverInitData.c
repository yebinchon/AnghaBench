
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ AdapterInterfaceType; } ;
struct TYPE_12__ {TYPE_2__ HwInitData; } ;
struct TYPE_9__ {struct TYPE_9__* Flink; } ;
struct TYPE_11__ {TYPE_1__ InitDataListHead; } ;
typedef TYPE_1__* PLIST_ENTRY ;
typedef TYPE_2__* PHW_INITIALIZATION_DATA ;
typedef TYPE_3__* PDRIVER_OBJECT_EXTENSION ;
typedef TYPE_4__* PDRIVER_INIT_DATA ;
typedef scalar_t__ INTERFACE_TYPE ;


 TYPE_4__* CONTAINING_RECORD (TYPE_1__*,int ,int ) ;
 int DPRINT1 (char*) ;
 int DRIVER_INIT_DATA ;
 int Entry ;

PHW_INITIALIZATION_DATA
PortGetDriverInitData(
    PDRIVER_OBJECT_EXTENSION DriverExtension,
    INTERFACE_TYPE InterfaceType)
{
    PDRIVER_INIT_DATA InitData;
    PLIST_ENTRY ListEntry;

    DPRINT1("PortGetDriverInitData()\n");

    ListEntry = DriverExtension->InitDataListHead.Flink;
    while (ListEntry != &DriverExtension->InitDataListHead)
    {
        InitData = CONTAINING_RECORD(ListEntry,
                                     DRIVER_INIT_DATA,
                                     Entry);
        if (InitData->HwInitData.AdapterInterfaceType == InterfaceType)
            return &InitData->HwInitData;

        ListEntry = ListEntry->Flink;
    }

    return ((void*)0);
}
