
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* Handler; TYPE_3__* Next; int SpaceId; int Node; } ;
struct TYPE_7__ {TYPE_3__* RegionList; } ;
struct TYPE_9__ {TYPE_2__ Region; TYPE_1__ AddressSpace; } ;
typedef int BOOLEAN ;
typedef int ACPI_STATUS ;
typedef TYPE_3__ ACPI_OPERAND_OBJECT ;


 int ACPI_DB_OPREGION ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int AE_ALREADY_EXISTS ;
 int AE_OK ;
 int AcpiUtAddReference (TYPE_3__*) ;
 int AcpiUtGetNodeName (int ) ;
 int AcpiUtGetRegionName (int ) ;
 int EvAttachRegion ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiEvAttachRegion (
    ACPI_OPERAND_OBJECT *HandlerObj,
    ACPI_OPERAND_OBJECT *RegionObj,
    BOOLEAN AcpiNsIsLocked)
{

    ACPI_FUNCTION_TRACE (EvAttachRegion);




    if (RegionObj->Region.Handler)
    {
        return_ACPI_STATUS (AE_ALREADY_EXISTS);
    }

    ACPI_DEBUG_PRINT ((ACPI_DB_OPREGION,
        "Adding Region [%4.4s] %p to address handler %p [%s]\n",
        AcpiUtGetNodeName (RegionObj->Region.Node),
        RegionObj, HandlerObj,
        AcpiUtGetRegionName (RegionObj->Region.SpaceId)));



    RegionObj->Region.Next = HandlerObj->AddressSpace.RegionList;
    HandlerObj->AddressSpace.RegionList = RegionObj;
    RegionObj->Region.Handler = HandlerObj;
    AcpiUtAddReference (HandlerObj);

    return_ACPI_STATUS (AE_OK);
}
