
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int UINT8 ;
struct TYPE_8__ {int* Pointer; } ;
struct TYPE_9__ {TYPE_1__ Buffer; } ;
typedef int AML_RESOURCE_END_TAG ;
typedef int ACPI_WALK_STATE ;
typedef int ACPI_STATUS ;
typedef int ACPI_SIZE ;
typedef TYPE_2__ ACPI_OPERAND_OBJECT ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_PTR_DIFF (int*,int*) ;
 int ACPI_RESOURCE_NAME_END_TAG ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 TYPE_2__* AcpiUtCreateBufferObject (int) ;
 int AcpiUtGetResourceEndTag (TYPE_2__*,int**) ;
 int ExConcatTemplate ;
 int memcpy (int*,int*,int) ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiExConcatTemplate (
    ACPI_OPERAND_OBJECT *Operand0,
    ACPI_OPERAND_OBJECT *Operand1,
    ACPI_OPERAND_OBJECT **ActualReturnDesc,
    ACPI_WALK_STATE *WalkState)
{
    ACPI_STATUS Status;
    ACPI_OPERAND_OBJECT *ReturnDesc;
    UINT8 *NewBuf;
    UINT8 *EndTag;
    ACPI_SIZE Length0;
    ACPI_SIZE Length1;
    ACPI_SIZE NewLength;


    ACPI_FUNCTION_TRACE (ExConcatTemplate);
    Status = AcpiUtGetResourceEndTag (Operand0, &EndTag);
    if (ACPI_FAILURE (Status))
    {
        return_ACPI_STATUS (Status);
    }

    Length0 = ACPI_PTR_DIFF (EndTag, Operand0->Buffer.Pointer);



    Status = AcpiUtGetResourceEndTag (Operand1, &EndTag);
    if (ACPI_FAILURE (Status))
    {
        return_ACPI_STATUS (Status);
    }

    Length1 = ACPI_PTR_DIFF (EndTag, Operand1->Buffer.Pointer);



    NewLength = Length0 + Length1 + sizeof (AML_RESOURCE_END_TAG);



    ReturnDesc = AcpiUtCreateBufferObject (NewLength);
    if (!ReturnDesc)
    {
        return_ACPI_STATUS (AE_NO_MEMORY);
    }





    NewBuf = ReturnDesc->Buffer.Pointer;
    memcpy (NewBuf, Operand0->Buffer.Pointer, Length0);
    memcpy (NewBuf + Length0, Operand1->Buffer.Pointer, Length1);



    NewBuf[NewLength - 1] = 0;
    NewBuf[NewLength - 2] = ACPI_RESOURCE_NAME_END_TAG | 1;



    *ActualReturnDesc = ReturnDesc;
    return_ACPI_STATUS (AE_OK);
}
