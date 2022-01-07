
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT8 ;
typedef size_t UINT32 ;
struct TYPE_3__ {int * Arguments; int * LocalVariables; } ;
typedef TYPE_1__ ACPI_WALK_STATE ;
typedef int ACPI_STATUS ;
typedef int ACPI_NAMESPACE_NODE ;


 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 size_t ACPI_METHOD_MAX_ARG ;
 size_t ACPI_METHOD_MAX_LOCAL ;


 int AE_AML_INVALID_INDEX ;
 int AE_INFO ;
 int AE_OK ;
 int AE_TYPE ;
 int DsMethodDataGetNode ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiDsMethodDataGetNode (
    UINT8 Type,
    UINT32 Index,
    ACPI_WALK_STATE *WalkState,
    ACPI_NAMESPACE_NODE **Node)
{
    ACPI_FUNCTION_TRACE (DsMethodDataGetNode);





    switch (Type)
    {
    case 128:

        if (Index > ACPI_METHOD_MAX_LOCAL)
        {
            ACPI_ERROR ((AE_INFO,
                "Local index %u is invalid (max %u)",
                Index, ACPI_METHOD_MAX_LOCAL));
            return_ACPI_STATUS (AE_AML_INVALID_INDEX);
        }



        *Node = &WalkState->LocalVariables[Index];
        break;

    case 129:

        if (Index > ACPI_METHOD_MAX_ARG)
        {
            ACPI_ERROR ((AE_INFO,
                "Arg index %u is invalid (max %u)",
                Index, ACPI_METHOD_MAX_ARG));
            return_ACPI_STATUS (AE_AML_INVALID_INDEX);
        }



        *Node = &WalkState->Arguments[Index];
        break;

    default:

        ACPI_ERROR ((AE_INFO, "Type %u is invalid", Type));
        return_ACPI_STATUS (AE_TYPE);
    }

    return_ACPI_STATUS (AE_OK);
}
