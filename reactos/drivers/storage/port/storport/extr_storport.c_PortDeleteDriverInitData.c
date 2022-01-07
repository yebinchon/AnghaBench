
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_10__ {int Entry; } ;
struct TYPE_8__ {struct TYPE_8__* Flink; } ;
struct TYPE_9__ {TYPE_1__ InitDataListHead; } ;
typedef TYPE_1__* PLIST_ENTRY ;
typedef TYPE_2__* PDRIVER_OBJECT_EXTENSION ;
typedef TYPE_3__* PDRIVER_INIT_DATA ;


 TYPE_3__* CONTAINING_RECORD (TYPE_1__*,int ,int ) ;
 int DPRINT1 (char*) ;
 int DRIVER_INIT_DATA ;
 int Entry ;
 int ExFreePoolWithTag (TYPE_3__*,int ) ;
 int RemoveEntryList (int *) ;
 int TAG_INIT_DATA ;

__attribute__((used)) static
VOID
PortDeleteDriverInitData(
    PDRIVER_OBJECT_EXTENSION DriverExtension)
{
    PDRIVER_INIT_DATA InitData;
    PLIST_ENTRY ListEntry;

    DPRINT1("PortDeleteDriverInitData()\n");

    ListEntry = DriverExtension->InitDataListHead.Flink;
    while (ListEntry != &DriverExtension->InitDataListHead)
    {
        InitData = CONTAINING_RECORD(ListEntry,
                                     DRIVER_INIT_DATA,
                                     Entry);

        RemoveEntryList(&InitData->Entry);

        ExFreePoolWithTag(InitData,
                          TAG_INIT_DATA);

        ListEntry = DriverExtension->InitDataListHead.Flink;
    }
}
