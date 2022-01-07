
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t UINT32 ;
struct TYPE_9__ {size_t Integer; } ;
struct TYPE_8__ {TYPE_2__* LocalVariables; TYPE_1__* Arguments; } ;
struct TYPE_7__ {int Flags; void* Type; void* DescriptorType; TYPE_5__ Name; } ;
struct TYPE_6__ {int Flags; void* Type; void* DescriptorType; TYPE_5__ Name; } ;
typedef TYPE_3__ ACPI_WALK_STATE ;


 void* ACPI_DESC_TYPE_NAMED ;
 int ACPI_FUNCTION_TRACE (int ) ;
 size_t ACPI_METHOD_NUM_ARGS ;
 size_t ACPI_METHOD_NUM_LOCALS ;
 int ACPI_MOVE_32_TO_32 (TYPE_5__*,int ) ;
 void* ACPI_TYPE_ANY ;
 int ANOBJ_METHOD_ARG ;
 int ANOBJ_METHOD_LOCAL ;
 int DsMethodDataInit ;
 int NAMEOF_ARG_NTE ;
 int NAMEOF_LOCAL_NTE ;
 int return_VOID ;

void
AcpiDsMethodDataInit (
    ACPI_WALK_STATE *WalkState)
{
    UINT32 i;


    ACPI_FUNCTION_TRACE (DsMethodDataInit);




    for (i = 0; i < ACPI_METHOD_NUM_ARGS; i++)
    {
        ACPI_MOVE_32_TO_32 (&WalkState->Arguments[i].Name,
            NAMEOF_ARG_NTE);

        WalkState->Arguments[i].Name.Integer |= (i << 24);
        WalkState->Arguments[i].DescriptorType = ACPI_DESC_TYPE_NAMED;
        WalkState->Arguments[i].Type = ACPI_TYPE_ANY;
        WalkState->Arguments[i].Flags = ANOBJ_METHOD_ARG;
    }



    for (i = 0; i < ACPI_METHOD_NUM_LOCALS; i++)
    {
        ACPI_MOVE_32_TO_32 (&WalkState->LocalVariables[i].Name,
            NAMEOF_LOCAL_NTE);

        WalkState->LocalVariables[i].Name.Integer |= (i << 24);
        WalkState->LocalVariables[i].DescriptorType = ACPI_DESC_TYPE_NAMED;
        WalkState->LocalVariables[i].Type = ACPI_TYPE_ANY;
        WalkState->LocalVariables[i].Flags = ANOBJ_METHOD_LOCAL;
    }

    return_VOID;
}
