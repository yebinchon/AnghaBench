
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef void* UINT8 ;
struct TYPE_23__ {scalar_t__ Type; } ;
struct TYPE_21__ {TYPE_4__* Handler; } ;
struct TYPE_20__ {scalar_t__ Handler; TYPE_4__* Next; int * Setup; void* Context; TYPE_5__* Node; int * RegionList; void* HandlerFlags; void* SpaceId; } ;
struct TYPE_19__ {void* Type; } ;
struct TYPE_22__ {TYPE_3__ CommonNotify; TYPE_2__ AddressSpace; TYPE_1__ Common; } ;
typedef int ACPI_STATUS ;
typedef TYPE_4__ ACPI_OPERAND_OBJECT ;
typedef scalar_t__ ACPI_OBJECT_TYPE ;
typedef TYPE_5__ ACPI_NAMESPACE_NODE ;
typedef int ACPI_ADR_SPACE_TYPE ;
typedef int * ACPI_ADR_SPACE_SETUP ;
typedef scalar_t__ ACPI_ADR_SPACE_HANDLER ;


 void* ACPI_ADDR_HANDLER_DEFAULT_INSTALLED ;






 int ACPI_DB_OPREGION ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_DEFAULT_HANDLER ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_NS_WALK_UNLOCK ;
 scalar_t__ ACPI_TYPE_ANY ;
 scalar_t__ ACPI_TYPE_DEVICE ;
 scalar_t__ ACPI_TYPE_LOCAL_ADDRESS_HANDLER ;
 scalar_t__ ACPI_TYPE_PROCESSOR ;
 scalar_t__ ACPI_TYPE_THERMAL ;
 int ACPI_UINT32_MAX ;
 int AE_ALREADY_EXISTS ;
 int AE_BAD_PARAMETER ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int AE_SAME_HANDLER ;
 int * AcpiEvCmosRegionSetup ;
 int * AcpiEvDefaultRegionSetup ;
 TYPE_4__* AcpiEvFindRegionHandler (int,TYPE_4__*) ;
 int AcpiEvInstallHandler ;
 int * AcpiEvIoSpaceRegionSetup ;
 int * AcpiEvPciBarRegionSetup ;
 int * AcpiEvPciConfigRegionSetup ;
 int * AcpiEvSystemMemoryRegionSetup ;
 scalar_t__ AcpiExCmosSpaceHandler ;
 scalar_t__ AcpiExDataTableSpaceHandler ;
 scalar_t__ AcpiExPciBarSpaceHandler ;
 scalar_t__ AcpiExPciConfigSpaceHandler ;
 scalar_t__ AcpiExSystemIoSpaceHandler ;
 scalar_t__ AcpiExSystemMemorySpaceHandler ;
 TYPE_5__* AcpiGbl_RootNode ;
 int AcpiNsAttachObject (TYPE_5__*,TYPE_4__*,scalar_t__) ;
 TYPE_4__* AcpiNsGetAttachedObject (TYPE_5__*) ;
 int AcpiNsWalkNamespace (scalar_t__,TYPE_5__*,int ,int ,int ,int *,TYPE_4__*,int *) ;
 TYPE_4__* AcpiUtCreateInternalObject (scalar_t__) ;
 int AcpiUtGetNodeName (TYPE_5__*) ;
 int AcpiUtGetRegionName (int) ;
 int AcpiUtRemoveReference (TYPE_4__*) ;
 int EvInstallSpaceHandler ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiEvInstallSpaceHandler (
    ACPI_NAMESPACE_NODE *Node,
    ACPI_ADR_SPACE_TYPE SpaceId,
    ACPI_ADR_SPACE_HANDLER Handler,
    ACPI_ADR_SPACE_SETUP Setup,
    void *Context)
{
    ACPI_OPERAND_OBJECT *ObjDesc;
    ACPI_OPERAND_OBJECT *HandlerObj;
    ACPI_STATUS Status = AE_OK;
    ACPI_OBJECT_TYPE Type;
    UINT8 Flags = 0;


    ACPI_FUNCTION_TRACE (EvInstallSpaceHandler);






    if ((Node->Type != ACPI_TYPE_DEVICE) &&
        (Node->Type != ACPI_TYPE_PROCESSOR) &&
        (Node->Type != ACPI_TYPE_THERMAL) &&
        (Node != AcpiGbl_RootNode))
    {
        Status = AE_BAD_PARAMETER;
        goto UnlockAndExit;
    }

    if (Handler == ACPI_DEFAULT_HANDLER)
    {
        Flags = ACPI_ADDR_HANDLER_DEFAULT_INSTALLED;

        switch (SpaceId)
        {
        case 128:

            Handler = AcpiExSystemMemorySpaceHandler;
            Setup = AcpiEvSystemMemoryRegionSetup;
            break;

        case 129:

            Handler = AcpiExSystemIoSpaceHandler;
            Setup = AcpiEvIoSpaceRegionSetup;
            break;

        case 130:

            Handler = AcpiExPciConfigSpaceHandler;
            Setup = AcpiEvPciConfigRegionSetup;
            break;

        case 133:

            Handler = AcpiExCmosSpaceHandler;
            Setup = AcpiEvCmosRegionSetup;
            break;

        case 131:

            Handler = AcpiExPciBarSpaceHandler;
            Setup = AcpiEvPciBarRegionSetup;
            break;

        case 132:

            Handler = AcpiExDataTableSpaceHandler;
            Setup = ((void*)0);
            break;

        default:

            Status = AE_BAD_PARAMETER;
            goto UnlockAndExit;
        }
    }



    if (!Setup)
    {
        Setup = AcpiEvDefaultRegionSetup;
    }



    ObjDesc = AcpiNsGetAttachedObject (Node);
    if (ObjDesc)
    {




        HandlerObj = AcpiEvFindRegionHandler (SpaceId,
            ObjDesc->CommonNotify.Handler);

        if (HandlerObj)
        {
            if (HandlerObj->AddressSpace.Handler == Handler)
            {





                Status = AE_SAME_HANDLER;
                goto UnlockAndExit;
            }
            else
            {


                Status = AE_ALREADY_EXISTS;
            }

            goto UnlockAndExit;
        }
    }
    else
    {
        ACPI_DEBUG_PRINT ((ACPI_DB_OPREGION,
            "Creating object on Device %p while installing handler\n",
            Node));



        if (Node->Type == ACPI_TYPE_ANY)
        {
            Type = ACPI_TYPE_DEVICE;
        }
        else
        {
            Type = Node->Type;
        }

        ObjDesc = AcpiUtCreateInternalObject (Type);
        if (!ObjDesc)
        {
            Status = AE_NO_MEMORY;
            goto UnlockAndExit;
        }



        ObjDesc->Common.Type = (UINT8) Type;



        Status = AcpiNsAttachObject (Node, ObjDesc, Type);



        AcpiUtRemoveReference (ObjDesc);

        if (ACPI_FAILURE (Status))
        {
            goto UnlockAndExit;
        }
    }

    ACPI_DEBUG_PRINT ((ACPI_DB_OPREGION,
        "Installing address handler for region %s(%X) "
        "on Device %4.4s %p(%p)\n",
        AcpiUtGetRegionName (SpaceId), SpaceId,
        AcpiUtGetNodeName (Node), Node, ObjDesc));







    HandlerObj = AcpiUtCreateInternalObject (ACPI_TYPE_LOCAL_ADDRESS_HANDLER);
    if (!HandlerObj)
    {
        Status = AE_NO_MEMORY;
        goto UnlockAndExit;
    }



    HandlerObj->AddressSpace.SpaceId = (UINT8) SpaceId;
    HandlerObj->AddressSpace.HandlerFlags = Flags;
    HandlerObj->AddressSpace.RegionList = ((void*)0);
    HandlerObj->AddressSpace.Node = Node;
    HandlerObj->AddressSpace.Handler = Handler;
    HandlerObj->AddressSpace.Context = Context;
    HandlerObj->AddressSpace.Setup = Setup;



    HandlerObj->AddressSpace.Next = ObjDesc->CommonNotify.Handler;





    ObjDesc->CommonNotify.Handler = HandlerObj;
    Status = AcpiNsWalkNamespace (ACPI_TYPE_ANY, Node,
        ACPI_UINT32_MAX, ACPI_NS_WALK_UNLOCK,
        AcpiEvInstallHandler, ((void*)0), HandlerObj, ((void*)0));

UnlockAndExit:
    return_ACPI_STATUS (Status);
}
