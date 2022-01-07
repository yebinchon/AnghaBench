
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_12__ {int Bag; TYPE_10__* Descriptor; } ;
struct TYPE_15__ {TYPE_1__ Filter; } ;
struct TYPE_14__ {int PropertyItemSize; int PropertySetsCount; int PropertySets; } ;
struct TYPE_13__ {scalar_t__ AutomationTable; } ;
struct TYPE_11__ {int AutomationTable; } ;
typedef int PVOID ;
typedef int PKSAUTOMATION_TABLE ;
typedef int NTSTATUS ;
typedef int KSPROPERTY_ITEM ;
typedef TYPE_2__ KSFILTER_DESCRIPTOR ;
typedef TYPE_3__ KSAUTOMATION_TABLE ;
typedef TYPE_4__ IKsFilterImpl ;


 TYPE_10__* AllocateItem (int ,int) ;
 int FilterPropertySet ;
 int FreeItem (int ) ;
 int KsAddItemToObjectBag (int ,int ,int *) ;
 int KsMergeAutomationTables (int *,int ,TYPE_3__*,int ) ;
 int NT_SUCCESS (int ) ;
 int NonPagedPool ;
 int RtlMoveMemory (int ,TYPE_2__ const*,int) ;
 int RtlZeroMemory (TYPE_3__*,int) ;
 int STATUS_INSUFFICIENT_RESOURCES ;

NTSTATUS
IKsFilter_CopyFilterDescriptor(
    IKsFilterImpl * This,
    const KSFILTER_DESCRIPTOR* FilterDescriptor)
{
    NTSTATUS Status;
    KSAUTOMATION_TABLE AutomationTable;

    This->Filter.Descriptor = AllocateItem(NonPagedPool, sizeof(KSFILTER_DESCRIPTOR));
    if (!This->Filter.Descriptor)
        return STATUS_INSUFFICIENT_RESOURCES;

    Status = KsAddItemToObjectBag(This->Filter.Bag, (PVOID)This->Filter.Descriptor, ((void*)0));
    if (!NT_SUCCESS(Status))
    {
        FreeItem((PVOID)This->Filter.Descriptor);
        This->Filter.Descriptor = ((void*)0);
        return STATUS_INSUFFICIENT_RESOURCES;
    }


    RtlMoveMemory((PVOID)This->Filter.Descriptor, FilterDescriptor, sizeof(KSFILTER_DESCRIPTOR));


    RtlZeroMemory(&AutomationTable, sizeof(KSAUTOMATION_TABLE));


    AutomationTable.PropertyItemSize = sizeof(KSPROPERTY_ITEM);
    AutomationTable.PropertySetsCount = 3;
    AutomationTable.PropertySets = FilterPropertySet;


    Status = KsMergeAutomationTables((PKSAUTOMATION_TABLE*)&This->Filter.Descriptor->AutomationTable, (PKSAUTOMATION_TABLE)FilterDescriptor->AutomationTable, &AutomationTable, This->Filter.Bag);

    return Status;
}
