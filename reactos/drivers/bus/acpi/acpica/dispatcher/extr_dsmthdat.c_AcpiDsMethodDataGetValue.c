
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT8 ;
typedef int UINT64 ;
typedef int UINT32 ;
struct TYPE_3__ {int * Object; } ;
typedef int ACPI_WALK_STATE ;
typedef int ACPI_STATUS ;
typedef int ACPI_OPERAND_OBJECT ;
typedef TYPE_1__ ACPI_NAMESPACE_NODE ;


 int ACPI_ERROR (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;


 int AE_AML_INTERNAL ;
 int AE_AML_UNINITIALIZED_ARG ;
 int AE_AML_UNINITIALIZED_LOCAL ;
 int AE_BAD_PARAMETER ;
 int AE_INFO ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int AcpiDsMethodDataGetNode (int,int ,int *,TYPE_1__**) ;
 scalar_t__ AcpiGbl_EnableInterpreterSlack ;
 int AcpiUtAddReference (int *) ;
 int * AcpiUtCreateIntegerObject (int ) ;
 int DsMethodDataGetValue ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiDsMethodDataGetValue (
    UINT8 Type,
    UINT32 Index,
    ACPI_WALK_STATE *WalkState,
    ACPI_OPERAND_OBJECT **DestDesc)
{
    ACPI_STATUS Status;
    ACPI_NAMESPACE_NODE *Node;
    ACPI_OPERAND_OBJECT *Object;


    ACPI_FUNCTION_TRACE (DsMethodDataGetValue);




    if (!DestDesc)
    {
        ACPI_ERROR ((AE_INFO, "Null object descriptor pointer"));
        return_ACPI_STATUS (AE_BAD_PARAMETER);
    }



    Status = AcpiDsMethodDataGetNode (Type, Index, WalkState, &Node);
    if (ACPI_FAILURE (Status))
    {
        return_ACPI_STATUS (Status);
    }



    Object = Node->Object;



    if (!Object)
    {
        if (AcpiGbl_EnableInterpreterSlack)
        {
            Object = AcpiUtCreateIntegerObject ((UINT64) 0);
            if (!Object)
            {
                return_ACPI_STATUS (AE_NO_MEMORY);
            }

            Node->Object = Object;
        }



        else switch (Type)
        {
        case 129:

            ACPI_ERROR ((AE_INFO,
                "Uninitialized Arg[%u] at node %p",
                Index, Node));

            return_ACPI_STATUS (AE_AML_UNINITIALIZED_ARG);

        case 128:




            return_ACPI_STATUS (AE_AML_UNINITIALIZED_LOCAL);

        default:

            ACPI_ERROR ((AE_INFO, "Not a Arg/Local opcode: 0x%X", Type));
            return_ACPI_STATUS (AE_AML_INTERNAL);
        }
    }





    *DestDesc = Object;
    AcpiUtAddReference (Object);

    return_ACPI_STATUS (AE_OK);
}
