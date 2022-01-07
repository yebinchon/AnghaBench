
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int Entry; int HwInitData; } ;
struct TYPE_5__ {int InitDataListHead; } ;
typedef int PHW_INITIALIZATION_DATA ;
typedef TYPE_1__* PDRIVER_OBJECT_EXTENSION ;
typedef TYPE_2__* PDRIVER_INIT_DATA ;
typedef int NTSTATUS ;
typedef int HW_INITIALIZATION_DATA ;
typedef int DRIVER_INIT_DATA ;


 int DPRINT1 (char*) ;
 TYPE_2__* ExAllocatePoolWithTag (int ,int,int ) ;
 int InsertHeadList (int *,int *) ;
 int NonPagedPool ;
 int RtlCopyMemory (int *,int ,int) ;
 int STATUS_NO_MEMORY ;
 int STATUS_SUCCESS ;
 int TAG_INIT_DATA ;

__attribute__((used)) static
NTSTATUS
PortAddDriverInitData(
    PDRIVER_OBJECT_EXTENSION DriverExtension,
    PHW_INITIALIZATION_DATA HwInitializationData)
{
    PDRIVER_INIT_DATA InitData;

    DPRINT1("PortAddDriverInitData()\n");

    InitData = ExAllocatePoolWithTag(NonPagedPool,
                                     sizeof(DRIVER_INIT_DATA),
                                     TAG_INIT_DATA);
    if (InitData == ((void*)0))
        return STATUS_NO_MEMORY;

    RtlCopyMemory(&InitData->HwInitData,
                  HwInitializationData,
                  sizeof(HW_INITIALIZATION_DATA));

    InsertHeadList(&DriverExtension->InitDataListHead,
                   &InitData->Entry);

    return STATUS_SUCCESS;
}
