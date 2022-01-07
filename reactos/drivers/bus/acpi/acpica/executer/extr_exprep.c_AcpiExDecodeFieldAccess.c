
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT8 ;
typedef int UINT32 ;
struct TYPE_6__ {scalar_t__ Type; } ;
struct TYPE_5__ {int BitLength; int StartFieldBitOffset; } ;
struct TYPE_7__ {TYPE_2__ Common; TYPE_1__ CommonField; } ;
typedef TYPE_3__ ACPI_OPERAND_OBJECT ;


 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 scalar_t__ ACPI_TYPE_BUFFER_FIELD ;
 int AE_INFO ;





 int AML_FIELD_ACCESS_TYPE_MASK ;

 int AcpiExGenerateAccess (int ,int ,int) ;
 int ExDecodeFieldAccess ;
 int return_UINT32 (int) ;

__attribute__((used)) static UINT32
AcpiExDecodeFieldAccess (
    ACPI_OPERAND_OBJECT *ObjDesc,
    UINT8 FieldFlags,
    UINT32 *ReturnByteAlignment)
{
    UINT32 Access;
    UINT32 ByteAlignment;
    UINT32 BitLength;


    ACPI_FUNCTION_TRACE (ExDecodeFieldAccess);


    Access = (FieldFlags & AML_FIELD_ACCESS_TYPE_MASK);

    switch (Access)
    {
    case 133:
        ByteAlignment = 1;
        BitLength = 8;
        break;

    case 131:
    case 132:

        ByteAlignment = 1;
        BitLength = 8;
        break;

    case 128:

        ByteAlignment = 2;
        BitLength = 16;
        break;

    case 130:

        ByteAlignment = 4;
        BitLength = 32;
        break;

    case 129:

        ByteAlignment = 8;
        BitLength = 64;
        break;

    default:



        ACPI_ERROR ((AE_INFO,
            "Unknown field access type 0x%X",
            Access));

        return_UINT32 (0);
    }

    if (ObjDesc->Common.Type == ACPI_TYPE_BUFFER_FIELD)
    {





        ByteAlignment = 1;
    }

    *ReturnByteAlignment = ByteAlignment;
    return_UINT32 (BitLength);
}
