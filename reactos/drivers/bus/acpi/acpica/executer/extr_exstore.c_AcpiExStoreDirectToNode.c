
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {int Type; } ;
struct TYPE_12__ {int Type; } ;
struct TYPE_13__ {TYPE_1__ Common; } ;
typedef int ACPI_WALK_STATE ;
typedef int ACPI_STATUS ;
typedef TYPE_2__ ACPI_OPERAND_OBJECT ;
typedef TYPE_3__ ACPI_NAMESPACE_NODE ;


 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int AcpiNsAttachObject (TYPE_3__*,TYPE_2__*,int ) ;
 int AcpiUtCopyIobjectToIobject (TYPE_2__*,TYPE_2__**,int *) ;
 int AcpiUtGetObjectTypeName (TYPE_2__*) ;
 int AcpiUtGetTypeName (int ) ;
 int AcpiUtRemoveReference (TYPE_2__*) ;
 int ExStoreDirectToNode ;
 int return_ACPI_STATUS (int ) ;

__attribute__((used)) static ACPI_STATUS
AcpiExStoreDirectToNode (
    ACPI_OPERAND_OBJECT *SourceDesc,
    ACPI_NAMESPACE_NODE *Node,
    ACPI_WALK_STATE *WalkState)
{
    ACPI_STATUS Status;
    ACPI_OPERAND_OBJECT *NewDesc;


    ACPI_FUNCTION_TRACE (ExStoreDirectToNode);


    ACPI_DEBUG_PRINT ((ACPI_DB_EXEC,
        "Storing [%s] (%p) directly into node [%s] (%p)"
        " with no implicit conversion\n",
        AcpiUtGetObjectTypeName (SourceDesc), SourceDesc,
        AcpiUtGetTypeName (Node->Type), Node));



    Status = AcpiUtCopyIobjectToIobject (SourceDesc, &NewDesc, WalkState);
    if (ACPI_FAILURE (Status))
    {
        return_ACPI_STATUS (Status);
    }



    Status = AcpiNsAttachObject (Node, NewDesc, NewDesc->Common.Type);
    AcpiUtRemoveReference (NewDesc);
    return_ACPI_STATUS (Status);
}
