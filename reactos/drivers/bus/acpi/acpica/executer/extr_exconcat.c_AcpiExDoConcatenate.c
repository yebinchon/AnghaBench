
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


struct TYPE_23__ {int Type; } ;
struct TYPE_22__ {scalar_t__ Length; int * Pointer; } ;
struct TYPE_21__ {char* Pointer; scalar_t__ Length; } ;
struct TYPE_20__ {int Value; } ;
struct TYPE_24__ {TYPE_4__ Common; TYPE_3__ Buffer; TYPE_2__ String; TYPE_1__ Integer; } ;
typedef int ACPI_WALK_STATE ;
typedef int ACPI_STATUS ;
typedef scalar_t__ ACPI_SIZE ;
typedef TYPE_5__ ACPI_OPERAND_OBJECT ;
typedef int ACPI_OBJECT_TYPE ;


 int ACPI_ERROR (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_IMPLICIT_CONVERSION ;
 int ACPI_IMPLICIT_CONVERT_HEX ;
 int ACPI_MUL_2 (scalar_t__) ;



 int AE_AML_INTERNAL ;
 int AE_INFO ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int AcpiExConvertToBuffer (TYPE_5__*,TYPE_5__**) ;
 int AcpiExConvertToInteger (TYPE_5__*,TYPE_5__**,int ) ;
 int AcpiExConvertToObjectTypeString (TYPE_5__*,TYPE_5__**) ;
 int AcpiExConvertToString (TYPE_5__*,TYPE_5__**,int ) ;
 scalar_t__ AcpiGbl_IntegerByteWidth ;
 TYPE_5__* AcpiUtCreateBufferObject (scalar_t__) ;
 TYPE_5__* AcpiUtCreateStringObject (scalar_t__) ;
 int AcpiUtRemoveReference (TYPE_5__*) ;
 int ExDoConcatenate ;
 int memcpy (char*,int *,scalar_t__) ;
 int return_ACPI_STATUS (int ) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;

ACPI_STATUS
AcpiExDoConcatenate (
    ACPI_OPERAND_OBJECT *Operand0,
    ACPI_OPERAND_OBJECT *Operand1,
    ACPI_OPERAND_OBJECT **ActualReturnDesc,
    ACPI_WALK_STATE *WalkState)
{
    ACPI_OPERAND_OBJECT *LocalOperand0 = Operand0;
    ACPI_OPERAND_OBJECT *LocalOperand1 = Operand1;
    ACPI_OPERAND_OBJECT *TempOperand1 = ((void*)0);
    ACPI_OPERAND_OBJECT *ReturnDesc;
    char *Buffer;
    ACPI_OBJECT_TYPE Operand0Type;
    ACPI_OBJECT_TYPE Operand1Type;
    ACPI_STATUS Status;


    ACPI_FUNCTION_TRACE (ExDoConcatenate);




    switch (Operand0->Common.Type)
    {
    case 129:
    case 128:
    case 130:

        Operand0Type = Operand0->Common.Type;
        break;

    default:



        Status = AcpiExConvertToObjectTypeString (
            Operand0, &LocalOperand0);
        if (ACPI_FAILURE (Status))
        {
            goto Cleanup;
        }

        Operand0Type = 128;
        break;
    }



    switch (Operand1->Common.Type)
    {
    case 129:
    case 128:
    case 130:

        Operand1Type = Operand1->Common.Type;
        break;

    default:



        Status = AcpiExConvertToObjectTypeString (
            Operand1, &LocalOperand1);
        if (ACPI_FAILURE (Status))
        {
            goto Cleanup;
        }

        Operand1Type = 128;
        break;
    }
    switch (Operand0Type)
    {
    case 129:

        Status = AcpiExConvertToInteger (LocalOperand1, &TempOperand1,
            ACPI_IMPLICIT_CONVERSION);
        break;

    case 130:

        Status = AcpiExConvertToBuffer (LocalOperand1, &TempOperand1);
        break;

    case 128:

        switch (Operand1Type)
        {
        case 129:
        case 128:
        case 130:



            Status = AcpiExConvertToString (
                LocalOperand1, &TempOperand1, ACPI_IMPLICIT_CONVERT_HEX);
            break;

        default:

            Status = AE_OK;
            break;
        }
        break;

    default:

        ACPI_ERROR ((AE_INFO, "Invalid object type: 0x%X",
            Operand0->Common.Type));
        Status = AE_AML_INTERNAL;
    }

    if (ACPI_FAILURE (Status))
    {
        goto Cleanup;
    }



    if ((LocalOperand1 != Operand1) &&
        (LocalOperand1 != TempOperand1))
    {
        AcpiUtRemoveReference (LocalOperand1);
    }

    LocalOperand1 = TempOperand1;
    switch (Operand0Type)
    {
    case 129:




        ReturnDesc = AcpiUtCreateBufferObject (
            (ACPI_SIZE) ACPI_MUL_2 (AcpiGbl_IntegerByteWidth));
        if (!ReturnDesc)
        {
            Status = AE_NO_MEMORY;
            goto Cleanup;
        }

        Buffer = (char *) ReturnDesc->Buffer.Pointer;



        memcpy (Buffer, &Operand0->Integer.Value,
            AcpiGbl_IntegerByteWidth);



        memcpy (Buffer + AcpiGbl_IntegerByteWidth,
            &LocalOperand1->Integer.Value, AcpiGbl_IntegerByteWidth);
        break;

    case 128:



        ReturnDesc = AcpiUtCreateStringObject (
            ((ACPI_SIZE) LocalOperand0->String.Length +
            LocalOperand1->String.Length));
        if (!ReturnDesc)
        {
            Status = AE_NO_MEMORY;
            goto Cleanup;
        }

        Buffer = ReturnDesc->String.Pointer;



        strcpy (Buffer, LocalOperand0->String.Pointer);
        strcat (Buffer, LocalOperand1->String.Pointer);
        break;

    case 130:



        ReturnDesc = AcpiUtCreateBufferObject (
            ((ACPI_SIZE) Operand0->Buffer.Length +
            LocalOperand1->Buffer.Length));
        if (!ReturnDesc)
        {
            Status = AE_NO_MEMORY;
            goto Cleanup;
        }

        Buffer = (char *) ReturnDesc->Buffer.Pointer;



        memcpy (Buffer, Operand0->Buffer.Pointer,
            Operand0->Buffer.Length);
        memcpy (Buffer + Operand0->Buffer.Length,
            LocalOperand1->Buffer.Pointer,
            LocalOperand1->Buffer.Length);
        break;

    default:



        ACPI_ERROR ((AE_INFO, "Invalid object type: 0x%X",
            Operand0->Common.Type));
        Status = AE_AML_INTERNAL;
        goto Cleanup;
    }

    *ActualReturnDesc = ReturnDesc;

Cleanup:
    if (LocalOperand0 != Operand0)
    {
        AcpiUtRemoveReference (LocalOperand0);
    }

    if (LocalOperand1 != Operand1)
    {
        AcpiUtRemoveReference (LocalOperand1);
    }

    return_ACPI_STATUS (Status);
}
