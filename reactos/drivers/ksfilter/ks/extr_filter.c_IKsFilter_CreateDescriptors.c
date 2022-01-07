
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int ULONG_PTR ;
typedef size_t ULONG ;
struct TYPE_12__ {int TopologyNodesCount; int TopologyConnectionsCount; int * TopologyNodesNames; int * TopologyNodes; scalar_t__ TopologyConnections; int Categories; int CategoriesCount; } ;
struct TYPE_11__ {TYPE_1__* Descriptor; int Bag; } ;
struct TYPE_16__ {TYPE_3__ Topology; TYPE_2__ Filter; int * ProcessPinIndex; int * FirstPin; int * PinInstanceCount; } ;
struct TYPE_15__ {int NodeDescriptorsCount; int ConnectionsCount; int PinDescriptorsCount; int PinDescriptors; int PinDescriptorSize; int NodeDescriptors; int NodeDescriptorSize; scalar_t__ Connections; int Categories; int CategoriesCount; } ;
struct TYPE_14__ {int ConnectionsCount; } ;
struct TYPE_13__ {int Type; int Name; } ;
struct TYPE_10__ {scalar_t__ Connections; int PinDescriptors; } ;
typedef int PVOID ;
typedef TYPE_4__* PKSNODE_DESCRIPTOR ;
typedef TYPE_5__* PKSFILTER_DESCRIPTOR ;
typedef int NTSTATUS ;
typedef int KSTOPOLOGY_CONNECTION ;
typedef int KSPROCESSPIN_INDEXENTRY ;
typedef int KSPIN_DESCRIPTOR_EX ;
typedef int KSNODE_DESCRIPTOR ;
typedef TYPE_6__ KSFILTER_DESCRIPTOR ;
typedef TYPE_7__ IKsFilterImpl ;
typedef int GUID ;


 int ASSERT (int) ;
 void* AllocateItem (int ,int) ;
 int DPRINT (char*,size_t,...) ;
 int FreeItem (int ) ;
 int NT_SUCCESS (int ) ;
 int NonPagedPool ;
 int RtlMoveMemory (int ,int,int) ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_SUCCESS ;
 int _KsEdit (int ,int *,int,int,int ) ;

NTSTATUS
IKsFilter_CreateDescriptors(
    IKsFilterImpl * This,
    KSFILTER_DESCRIPTOR* FilterDescriptor)
{
    ULONG Index = 0;
    NTSTATUS Status;
    PKSNODE_DESCRIPTOR NodeDescriptor;


    This->FirstPin = ((void*)0);
    This->PinInstanceCount = ((void*)0);
    This->ProcessPinIndex = ((void*)0);


    This->Topology.CategoriesCount = FilterDescriptor->CategoriesCount;
    This->Topology.Categories = FilterDescriptor->Categories;
    This->Topology.TopologyNodesCount = FilterDescriptor->NodeDescriptorsCount;
    This->Topology.TopologyConnectionsCount = FilterDescriptor->ConnectionsCount;
    This->Topology.TopologyConnections = FilterDescriptor->Connections;


    if (FilterDescriptor->PinDescriptorsCount)
    {

        ASSERT(FilterDescriptor->PinDescriptors);


        ASSERT(FilterDescriptor->PinDescriptorSize == sizeof(KSPIN_DESCRIPTOR_EX));


        Status = _KsEdit(This->Filter.Bag, (PVOID*)&This->Filter.Descriptor->PinDescriptors, FilterDescriptor->PinDescriptorSize * FilterDescriptor->PinDescriptorsCount,
                         FilterDescriptor->PinDescriptorSize * FilterDescriptor->PinDescriptorsCount, 0);

        if (!NT_SUCCESS(Status))
        {
            DPRINT("IKsFilter_CreateDescriptors _KsEdit failed %lx\n", Status);
            return Status;
        }


        Status = _KsEdit(This->Filter.Bag, (PVOID*)&This->PinInstanceCount, sizeof(ULONG) * FilterDescriptor->PinDescriptorsCount,
                         sizeof(ULONG) * FilterDescriptor->PinDescriptorsCount, 0);

        if (!NT_SUCCESS(Status))
        {
            DPRINT("IKsFilter_CreateDescriptors _KsEdit failed %lx\n", Status);
            return Status;
        }


        Status = _KsEdit(This->Filter.Bag, (PVOID*)&This->FirstPin, sizeof(PVOID) * FilterDescriptor->PinDescriptorsCount,
                         sizeof(PVOID) * FilterDescriptor->PinDescriptorsCount, 0);

        if (!NT_SUCCESS(Status))
        {
            DPRINT("IKsFilter_CreateDescriptors _KsEdit failed %lx\n", Status);
            return Status;
        }


        RtlMoveMemory((PVOID)This->Filter.Descriptor->PinDescriptors, FilterDescriptor->PinDescriptors, FilterDescriptor->PinDescriptorSize * FilterDescriptor->PinDescriptorsCount);


        Status = _KsEdit(This->Filter.Bag, (PVOID*)&This->ProcessPinIndex, sizeof(KSPROCESSPIN_INDEXENTRY) * FilterDescriptor->PinDescriptorsCount,
                         sizeof(KSPROCESSPIN_INDEXENTRY) * FilterDescriptor->PinDescriptorsCount, 0);

        if (!NT_SUCCESS(Status))
        {
            DPRINT("IKsFilter_CreateDescriptors _KsEdit failed %lx\n", Status);
            return Status;
        }

    }


    if (FilterDescriptor->ConnectionsCount)
    {

        Status = _KsEdit(This->Filter.Bag,
                        (PVOID*)&This->Filter.Descriptor->Connections,
                         FilterDescriptor->ConnectionsCount * sizeof(KSTOPOLOGY_CONNECTION),
                         FilterDescriptor->ConnectionsCount * sizeof(KSTOPOLOGY_CONNECTION),
                         0);

       This->Topology.TopologyConnections = This->Filter.Descriptor->Connections;
       This->Topology.TopologyConnectionsCount = ((PKSFILTER_DESCRIPTOR)This->Filter.Descriptor)->ConnectionsCount = FilterDescriptor->ConnectionsCount;
    }

    if (FilterDescriptor->NodeDescriptorsCount)
    {

        ASSERT(FilterDescriptor->NodeDescriptors);


        ASSERT(FilterDescriptor->NodeDescriptorSize >= sizeof(KSNODE_DESCRIPTOR));

        This->Topology.TopologyNodes = AllocateItem(NonPagedPool, sizeof(GUID) * FilterDescriptor->NodeDescriptorsCount);

        if (!This->Topology.TopologyNodes)
        {
            DPRINT("IKsFilter_CreateDescriptors OutOfMemory TopologyNodesCount %lu\n", FilterDescriptor->NodeDescriptorsCount);
            return STATUS_INSUFFICIENT_RESOURCES;
        }

        This->Topology.TopologyNodesNames = AllocateItem(NonPagedPool, sizeof(GUID) * FilterDescriptor->NodeDescriptorsCount);

        if (!This->Topology.TopologyNodesNames)
        {
            FreeItem((PVOID)This->Topology.TopologyNodes);
            DPRINT("IKsFilter_CreateDescriptors OutOfMemory TopologyNodesCount %lu\n", FilterDescriptor->NodeDescriptorsCount);
            return STATUS_INSUFFICIENT_RESOURCES;
        }

        DPRINT("NodeDescriptorCount %lu\n", FilterDescriptor->NodeDescriptorsCount);
        NodeDescriptor = (PKSNODE_DESCRIPTOR)FilterDescriptor->NodeDescriptors;
        for(Index = 0; Index < FilterDescriptor->NodeDescriptorsCount; Index++)
        {
            DPRINT("Index %lu Type %p Name %p\n", Index, NodeDescriptor->Type, NodeDescriptor->Name);


            if (NodeDescriptor->Type)
                RtlMoveMemory((PVOID)&This->Topology.TopologyNodes[Index], NodeDescriptor->Type, sizeof(GUID));


            if (NodeDescriptor->Name)
                RtlMoveMemory((PVOID)&This->Topology.TopologyNodesNames[Index], NodeDescriptor->Name, sizeof(GUID));


            NodeDescriptor = (PKSNODE_DESCRIPTOR)((ULONG_PTR)NodeDescriptor + FilterDescriptor->NodeDescriptorSize);
        }
    }

    return STATUS_SUCCESS;
}
