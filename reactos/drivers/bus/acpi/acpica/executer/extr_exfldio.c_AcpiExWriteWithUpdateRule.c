
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UINT64 ;
typedef int UINT32 ;
struct TYPE_5__ {int FieldFlags; int AccessByteWidth; } ;
struct TYPE_6__ {TYPE_1__ CommonField; } ;
typedef int Mask ;
typedef int ACPI_STATUS ;
typedef TYPE_2__ ACPI_OPERAND_OBJECT ;


 int ACPI_DB_BFIELD ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_ERROR (int ) ;
 int ACPI_FAILURE (int ) ;
 int ACPI_FORMAT_UINT64 (scalar_t__) ;
 int ACPI_FUNCTION_TRACE_U32 (int ,scalar_t__) ;
 scalar_t__ ACPI_MUL_8 (int) ;
 int ACPI_READ ;
 scalar_t__ ACPI_UINT64_MAX ;
 int ACPI_WRITE ;
 int AE_AML_OPERAND_VALUE ;
 int AE_INFO ;
 int AE_OK ;

 int AML_FIELD_UPDATE_RULE_MASK ;


 int AcpiExFieldDatumIo (TYPE_2__*,int ,scalar_t__*,int ) ;
 int ExWriteWithUpdateRule ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiExWriteWithUpdateRule (
    ACPI_OPERAND_OBJECT *ObjDesc,
    UINT64 Mask,
    UINT64 FieldValue,
    UINT32 FieldDatumByteOffset)
{
    ACPI_STATUS Status = AE_OK;
    UINT64 MergedValue;
    UINT64 CurrentValue;


    ACPI_FUNCTION_TRACE_U32 (ExWriteWithUpdateRule, Mask);




    MergedValue = FieldValue;



    if (Mask != ACPI_UINT64_MAX)
    {


        switch (ObjDesc->CommonField.FieldFlags & AML_FIELD_UPDATE_RULE_MASK)
        {
        case 130:




            if ((~Mask << (ACPI_MUL_8 (sizeof (Mask)) -
                   ACPI_MUL_8 (ObjDesc->CommonField.AccessByteWidth))) != 0)
            {




                Status = AcpiExFieldDatumIo (
                    ObjDesc, FieldDatumByteOffset, &CurrentValue, ACPI_READ);
                if (ACPI_FAILURE (Status))
                {
                    return_ACPI_STATUS (Status);
                }

                MergedValue |= (CurrentValue & ~Mask);
            }
            break;

        case 129:



            MergedValue |= ~Mask;
            break;

        case 128:



            MergedValue &= Mask;
            break;

        default:

            ACPI_ERROR ((AE_INFO,
                "Unknown UpdateRule value: 0x%X",
                (ObjDesc->CommonField.FieldFlags &
                    AML_FIELD_UPDATE_RULE_MASK)));
            return_ACPI_STATUS (AE_AML_OPERAND_VALUE);
        }
    }

    ACPI_DEBUG_PRINT ((ACPI_DB_BFIELD,
        "Mask %8.8X%8.8X, DatumOffset %X, Width %X, "
        "Value %8.8X%8.8X, MergedValue %8.8X%8.8X\n",
        ACPI_FORMAT_UINT64 (Mask),
        FieldDatumByteOffset,
        ObjDesc->CommonField.AccessByteWidth,
        ACPI_FORMAT_UINT64 (FieldValue),
        ACPI_FORMAT_UINT64 (MergedValue)));



    Status = AcpiExFieldDatumIo (
        ObjDesc, FieldDatumByteOffset, &MergedValue, ACPI_WRITE);

    return_ACPI_STATUS (Status);
}
