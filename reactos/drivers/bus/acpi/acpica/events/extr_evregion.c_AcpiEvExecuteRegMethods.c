
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_3__ {scalar_t__ SpaceId; scalar_t__ RegRunCount; int Function; } ;
typedef TYPE_1__ ACPI_REG_WALK_INFO ;
typedef int ACPI_NAMESPACE_NODE ;
typedef scalar_t__ ACPI_ADR_SPACE_TYPE ;


 scalar_t__ ACPI_ADR_SPACE_DATA_TABLE ;
 scalar_t__ ACPI_ADR_SPACE_EC ;
 scalar_t__ ACPI_ADR_SPACE_SYSTEM_IO ;
 scalar_t__ ACPI_ADR_SPACE_SYSTEM_MEMORY ;
 int ACPI_DB_NAMES ;
 int ACPI_DEBUG_PRINT_RAW (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_NS_WALK_UNLOCK ;
 int ACPI_TYPE_ANY ;
 int ACPI_UINT32_MAX ;
 int AcpiEvOrphanEcRegMethod (int *) ;
 int AcpiEvRegRun ;
 int AcpiNsWalkNamespace (int ,int *,int ,int ,int ,int *,TYPE_1__*,int *) ;
 int AcpiUtGetRegionName (scalar_t__) ;
 int EvExecuteRegMethods ;
 int return_VOID ;

void
AcpiEvExecuteRegMethods (
    ACPI_NAMESPACE_NODE *Node,
    ACPI_ADR_SPACE_TYPE SpaceId,
    UINT32 Function)
{
    ACPI_REG_WALK_INFO Info;


    ACPI_FUNCTION_TRACE (EvExecuteRegMethods);
    if ((SpaceId == ACPI_ADR_SPACE_SYSTEM_MEMORY) ||
        (SpaceId == ACPI_ADR_SPACE_SYSTEM_IO) ||
        (SpaceId == ACPI_ADR_SPACE_DATA_TABLE))
    {
        return_VOID;
    }

    Info.SpaceId = SpaceId;
    Info.Function = Function;
    Info.RegRunCount = 0;

    ACPI_DEBUG_PRINT_RAW ((ACPI_DB_NAMES,
        "    Running _REG methods for SpaceId %s\n",
        AcpiUtGetRegionName (Info.SpaceId)));







    (void) AcpiNsWalkNamespace (ACPI_TYPE_ANY, Node, ACPI_UINT32_MAX,
        ACPI_NS_WALK_UNLOCK, AcpiEvRegRun, ((void*)0), &Info, ((void*)0));



    if (SpaceId == ACPI_ADR_SPACE_EC)
    {
        AcpiEvOrphanEcRegMethod (Node);
    }

    ACPI_DEBUG_PRINT_RAW ((ACPI_DB_NAMES,
        "    Executed %u _REG methods for SpaceId %s\n",
        Info.RegRunCount, AcpiUtGetRegionName (Info.SpaceId)));

    return_VOID;
}
