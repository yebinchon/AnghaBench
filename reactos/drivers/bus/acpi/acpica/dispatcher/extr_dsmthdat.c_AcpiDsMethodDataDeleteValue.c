
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT8 ;
typedef int UINT32 ;
struct TYPE_4__ {int * Object; } ;
typedef int ACPI_WALK_STATE ;
typedef int ACPI_STATUS ;
typedef int ACPI_OPERAND_OBJECT ;
typedef TYPE_1__ ACPI_NAMESPACE_NODE ;


 scalar_t__ ACPI_DESC_TYPE_OPERAND ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 scalar_t__ ACPI_GET_DESCRIPTOR_TYPE (int *) ;
 int AcpiDsMethodDataGetNode (int ,int ,int *,TYPE_1__**) ;
 int * AcpiNsGetAttachedObject (TYPE_1__*) ;
 int AcpiUtRemoveReference (int *) ;
 int DsMethodDataDeleteValue ;
 int return_VOID ;

__attribute__((used)) static void
AcpiDsMethodDataDeleteValue (
    UINT8 Type,
    UINT32 Index,
    ACPI_WALK_STATE *WalkState)
{
    ACPI_STATUS Status;
    ACPI_NAMESPACE_NODE *Node;
    ACPI_OPERAND_OBJECT *Object;


    ACPI_FUNCTION_TRACE (DsMethodDataDeleteValue);




    Status = AcpiDsMethodDataGetNode (Type, Index, WalkState, &Node);
    if (ACPI_FAILURE (Status))
    {
        return_VOID;
    }



    Object = AcpiNsGetAttachedObject (Node);






    Node->Object = ((void*)0);

    if ((Object) &&
        (ACPI_GET_DESCRIPTOR_TYPE (Object) == ACPI_DESC_TYPE_OPERAND))
    {





        AcpiUtRemoveReference (Object);
    }

    return_VOID;
}
