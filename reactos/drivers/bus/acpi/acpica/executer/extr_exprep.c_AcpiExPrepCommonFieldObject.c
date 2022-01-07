
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* UINT8 ;
typedef void* UINT32 ;
struct TYPE_5__ {void* BaseByteOffset; void* StartFieldBitOffset; void* AccessByteWidth; void* BitLength; void* Attribute; void* FieldFlags; } ;
struct TYPE_6__ {TYPE_1__ CommonField; } ;
typedef int ACPI_STATUS ;
typedef TYPE_2__ ACPI_OPERAND_OBJECT ;


 scalar_t__ ACPI_DIV_8 (void*) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 void* ACPI_MUL_8 (void*) ;
 void* ACPI_ROUND_BITS_DOWN_TO_BYTES (void*) ;
 scalar_t__ ACPI_ROUND_DOWN (void*,void*) ;
 int AE_AML_OPERAND_VALUE ;
 int AE_OK ;
 void* AcpiExDecodeFieldAccess (TYPE_2__*,void*,void**) ;
 int ExPrepCommonFieldObject ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiExPrepCommonFieldObject (
    ACPI_OPERAND_OBJECT *ObjDesc,
    UINT8 FieldFlags,
    UINT8 FieldAttribute,
    UINT32 FieldBitPosition,
    UINT32 FieldBitLength)
{
    UINT32 AccessBitWidth;
    UINT32 ByteAlignment;
    UINT32 NearestByteAddress;


    ACPI_FUNCTION_TRACE (ExPrepCommonFieldObject);







    ObjDesc->CommonField.FieldFlags = FieldFlags;
    ObjDesc->CommonField.Attribute = FieldAttribute;
    ObjDesc->CommonField.BitLength = FieldBitLength;
    AccessBitWidth = AcpiExDecodeFieldAccess (
        ObjDesc, FieldFlags, &ByteAlignment);
    if (!AccessBitWidth)
    {
        return_ACPI_STATUS (AE_AML_OPERAND_VALUE);
    }



    ObjDesc->CommonField.AccessByteWidth = (UINT8)
        ACPI_DIV_8 (AccessBitWidth);
    NearestByteAddress =
        ACPI_ROUND_BITS_DOWN_TO_BYTES (FieldBitPosition);
    ObjDesc->CommonField.BaseByteOffset = (UINT32)
        ACPI_ROUND_DOWN (NearestByteAddress, ByteAlignment);





    ObjDesc->CommonField.StartFieldBitOffset = (UINT8)
        (FieldBitPosition - ACPI_MUL_8 (ObjDesc->CommonField.BaseByteOffset));

    return_ACPI_STATUS (AE_OK);
}
