#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int ULONG_PTR ;
typedef  size_t ULONG ;
struct TYPE_12__ {int TopologyNodesCount; int TopologyConnectionsCount; int /*<<< orphan*/ * TopologyNodesNames; int /*<<< orphan*/ * TopologyNodes; scalar_t__ TopologyConnections; int /*<<< orphan*/  Categories; int /*<<< orphan*/  CategoriesCount; } ;
struct TYPE_11__ {TYPE_1__* Descriptor; int /*<<< orphan*/  Bag; } ;
struct TYPE_16__ {TYPE_3__ Topology; TYPE_2__ Filter; int /*<<< orphan*/ * ProcessPinIndex; int /*<<< orphan*/ * FirstPin; int /*<<< orphan*/ * PinInstanceCount; } ;
struct TYPE_15__ {int NodeDescriptorsCount; int ConnectionsCount; int PinDescriptorsCount; int PinDescriptors; int PinDescriptorSize; int NodeDescriptors; int NodeDescriptorSize; scalar_t__ Connections; int /*<<< orphan*/  Categories; int /*<<< orphan*/  CategoriesCount; } ;
struct TYPE_14__ {int ConnectionsCount; } ;
struct TYPE_13__ {int Type; int Name; } ;
struct TYPE_10__ {scalar_t__ Connections; int /*<<< orphan*/  PinDescriptors; } ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  TYPE_4__* PKSNODE_DESCRIPTOR ;
typedef  TYPE_5__* PKSFILTER_DESCRIPTOR ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  KSTOPOLOGY_CONNECTION ;
typedef  int /*<<< orphan*/  KSPROCESSPIN_INDEXENTRY ;
typedef  int /*<<< orphan*/  KSPIN_DESCRIPTOR_EX ;
typedef  int /*<<< orphan*/  KSNODE_DESCRIPTOR ;
typedef  TYPE_6__ KSFILTER_DESCRIPTOR ;
typedef  TYPE_7__ IKsFilterImpl ;
typedef  int /*<<< orphan*/  GUID ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NonPagedPool ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  STATUS_INSUFFICIENT_RESOURCES ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 

NTSTATUS
FUNC7(
    IKsFilterImpl * This,
    KSFILTER_DESCRIPTOR* FilterDescriptor)
{
    ULONG Index = 0;
    NTSTATUS Status;
    PKSNODE_DESCRIPTOR NodeDescriptor;

    /* initialize pin descriptors */
    This->FirstPin = NULL;
    This->PinInstanceCount = NULL;
    This->ProcessPinIndex = NULL;

    /* initialize topology descriptor */
    This->Topology.CategoriesCount = FilterDescriptor->CategoriesCount;
    This->Topology.Categories = FilterDescriptor->Categories;
    This->Topology.TopologyNodesCount = FilterDescriptor->NodeDescriptorsCount;
    This->Topology.TopologyConnectionsCount = FilterDescriptor->ConnectionsCount;
    This->Topology.TopologyConnections = FilterDescriptor->Connections;

    /* are there any templates */
    if (FilterDescriptor->PinDescriptorsCount)
    {
        /* sanity check */
        FUNC0(FilterDescriptor->PinDescriptors);

        /* FIXME handle variable sized pin descriptors */
        FUNC0(FilterDescriptor->PinDescriptorSize == sizeof(KSPIN_DESCRIPTOR_EX));

        /* store pin descriptors ex */
        Status = FUNC6(This->Filter.Bag, (PVOID*)&This->Filter.Descriptor->PinDescriptors, FilterDescriptor->PinDescriptorSize * FilterDescriptor->PinDescriptorsCount,
                         FilterDescriptor->PinDescriptorSize * FilterDescriptor->PinDescriptorsCount, 0);

        if (!FUNC4(Status))
        {
            FUNC2("IKsFilter_CreateDescriptors _KsEdit failed %lx\n", Status);
            return Status;
        }

        /* store pin instance count */
        Status = FUNC6(This->Filter.Bag, (PVOID*)&This->PinInstanceCount, sizeof(ULONG) * FilterDescriptor->PinDescriptorsCount,
                         sizeof(ULONG) * FilterDescriptor->PinDescriptorsCount, 0);

        if (!FUNC4(Status))
        {
            FUNC2("IKsFilter_CreateDescriptors _KsEdit failed %lx\n", Status);
            return Status;
        }

        /* store instantiated pin arrays */
        Status = FUNC6(This->Filter.Bag, (PVOID*)&This->FirstPin, sizeof(PVOID) * FilterDescriptor->PinDescriptorsCount,
                         sizeof(PVOID) * FilterDescriptor->PinDescriptorsCount, 0);

        if (!FUNC4(Status))
        {
            FUNC2("IKsFilter_CreateDescriptors _KsEdit failed %lx\n", Status);
            return Status;
        }

        /* add new pin factory */
        FUNC5((PVOID)This->Filter.Descriptor->PinDescriptors, FilterDescriptor->PinDescriptors, FilterDescriptor->PinDescriptorSize * FilterDescriptor->PinDescriptorsCount);

        /* allocate process pin index */
        Status = FUNC6(This->Filter.Bag, (PVOID*)&This->ProcessPinIndex, sizeof(KSPROCESSPIN_INDEXENTRY) * FilterDescriptor->PinDescriptorsCount,
                         sizeof(KSPROCESSPIN_INDEXENTRY) * FilterDescriptor->PinDescriptorsCount, 0);

        if (!FUNC4(Status))
        {
            FUNC2("IKsFilter_CreateDescriptors _KsEdit failed %lx\n", Status);
            return Status;
        }

    }


    if (FilterDescriptor->ConnectionsCount)
    {
        /* modify connections array */
        Status = FUNC6(This->Filter.Bag,
                        (PVOID*)&This->Filter.Descriptor->Connections,
                         FilterDescriptor->ConnectionsCount * sizeof(KSTOPOLOGY_CONNECTION),
                         FilterDescriptor->ConnectionsCount * sizeof(KSTOPOLOGY_CONNECTION),
                         0);

       This->Topology.TopologyConnections = This->Filter.Descriptor->Connections;
       This->Topology.TopologyConnectionsCount = ((PKSFILTER_DESCRIPTOR)This->Filter.Descriptor)->ConnectionsCount = FilterDescriptor->ConnectionsCount;
    }

    if (FilterDescriptor->NodeDescriptorsCount)
    {
        /* sanity check */
        FUNC0(FilterDescriptor->NodeDescriptors);

        /* sanity check */
        FUNC0(FilterDescriptor->NodeDescriptorSize >= sizeof(KSNODE_DESCRIPTOR));

        This->Topology.TopologyNodes = FUNC1(NonPagedPool, sizeof(GUID) * FilterDescriptor->NodeDescriptorsCount);
        /* allocate topology node types array */
        if (!This->Topology.TopologyNodes)
        {
            FUNC2("IKsFilter_CreateDescriptors OutOfMemory TopologyNodesCount %lu\n", FilterDescriptor->NodeDescriptorsCount);
            return STATUS_INSUFFICIENT_RESOURCES;
        }

        This->Topology.TopologyNodesNames = FUNC1(NonPagedPool, sizeof(GUID) * FilterDescriptor->NodeDescriptorsCount);
        /* allocate topology names array */
        if (!This->Topology.TopologyNodesNames)
        {
            FUNC3((PVOID)This->Topology.TopologyNodes);
            FUNC2("IKsFilter_CreateDescriptors OutOfMemory TopologyNodesCount %lu\n", FilterDescriptor->NodeDescriptorsCount);
            return STATUS_INSUFFICIENT_RESOURCES;
        }

        FUNC2("NodeDescriptorCount %lu\n", FilterDescriptor->NodeDescriptorsCount);
        NodeDescriptor = (PKSNODE_DESCRIPTOR)FilterDescriptor->NodeDescriptors;
        for(Index = 0; Index < FilterDescriptor->NodeDescriptorsCount; Index++)
        {
            FUNC2("Index %lu Type %p Name %p\n", Index, NodeDescriptor->Type, NodeDescriptor->Name);

            /* copy topology type */
            if (NodeDescriptor->Type)
                FUNC5((PVOID)&This->Topology.TopologyNodes[Index], NodeDescriptor->Type, sizeof(GUID));

            /* copy topology name */
            if (NodeDescriptor->Name)
                FUNC5((PVOID)&This->Topology.TopologyNodesNames[Index], NodeDescriptor->Name, sizeof(GUID));

            // next node descriptor
            NodeDescriptor = (PKSNODE_DESCRIPTOR)((ULONG_PTR)NodeDescriptor + FilterDescriptor->NodeDescriptorSize);
        }
    }
    /* done! */
    return STATUS_SUCCESS;
}