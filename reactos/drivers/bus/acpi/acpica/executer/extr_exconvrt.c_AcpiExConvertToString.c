
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef char UINT8 ;
typedef int UINT64 ;
typedef size_t UINT32 ;
typedef int UINT16 ;
struct TYPE_13__ {char* Pointer; size_t Length; } ;
struct TYPE_12__ {size_t Length; } ;
struct TYPE_11__ {int Value; } ;
struct TYPE_10__ {int Type; } ;
struct TYPE_14__ {TYPE_4__ Buffer; TYPE_3__ String; TYPE_2__ Integer; TYPE_1__ Common; } ;
typedef int ACPI_STATUS ;
typedef int ACPI_SIZE ;
typedef TYPE_5__ ACPI_OPERAND_OBJECT ;




 int ACPI_FUNCTION_TRACE_PTR (int ,TYPE_5__*) ;

 size_t ACPI_MAX_DECIMAL_DIGITS ;
 size_t ACPI_MUL_2 (int) ;



 int AE_BAD_PARAMETER ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int AE_TYPE ;
 size_t AcpiExConvertToAscii (int ,int,char*,int) ;
 int AcpiGbl_IntegerByteWidth ;
 TYPE_5__* AcpiUtCreateStringObject (int ) ;
 int ExConvertToString ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiExConvertToString (
    ACPI_OPERAND_OBJECT *ObjDesc,
    ACPI_OPERAND_OBJECT **ResultDesc,
    UINT32 Type)
{
    ACPI_OPERAND_OBJECT *ReturnDesc;
    UINT8 *NewBuf;
    UINT32 i;
    UINT32 StringLength = 0;
    UINT16 Base = 16;
    UINT8 Separator = ',';


    ACPI_FUNCTION_TRACE_PTR (ExConvertToString, ObjDesc);


    switch (ObjDesc->Common.Type)
    {
    case 128:



        *ResultDesc = ObjDesc;
        return_ACPI_STATUS (AE_OK);

    case 129:

        switch (Type)
        {
        case 133:





            StringLength = ACPI_MAX_DECIMAL_DIGITS;
            Base = 10;
            break;

        default:



            StringLength = ACPI_MUL_2 (AcpiGbl_IntegerByteWidth);
            break;
        }





        ReturnDesc = AcpiUtCreateStringObject ((ACPI_SIZE) StringLength);
        if (!ReturnDesc)
        {
            return_ACPI_STATUS (AE_NO_MEMORY);
        }

        NewBuf = ReturnDesc->Buffer.Pointer;



        StringLength = AcpiExConvertToAscii (
            ObjDesc->Integer.Value, Base, NewBuf, AcpiGbl_IntegerByteWidth);



        ReturnDesc->String.Length = StringLength;
        NewBuf [StringLength] = 0;
        break;

    case 130:



        switch (Type)
        {
        case 133:






            Base = 10;





            for (i = 0; i < ObjDesc->Buffer.Length; i++)
            {
                if (ObjDesc->Buffer.Pointer[i] >= 100)
                {
                    StringLength += 4;
                }
                else if (ObjDesc->Buffer.Pointer[i] >= 10)
                {
                    StringLength += 3;
                }
                else
                {
                    StringLength += 2;
                }
            }
            break;

        case 131:
            Separator = ' ';
            StringLength = (ObjDesc->Buffer.Length * 5);
            break;

        case 132:
            Separator = ',';
            StringLength = (ObjDesc->Buffer.Length * 5);
            break;

        default:
            return_ACPI_STATUS (AE_BAD_PARAMETER);
        }






        if (StringLength)
        {
            StringLength--;
        }

        ReturnDesc = AcpiUtCreateStringObject ((ACPI_SIZE) StringLength);
        if (!ReturnDesc)
        {
            return_ACPI_STATUS (AE_NO_MEMORY);
        }

        NewBuf = ReturnDesc->Buffer.Pointer;





        for (i = 0; i < ObjDesc->Buffer.Length; i++)
        {
            if (Base == 16)
            {


                *NewBuf++ = '0';
                *NewBuf++ = 'x';
            }

            NewBuf += AcpiExConvertToAscii (
                (UINT64) ObjDesc->Buffer.Pointer[i], Base, NewBuf, 1);



            *NewBuf++ = Separator;
        }





        if (ObjDesc->Buffer.Length)
        {
            NewBuf--;
        }
        *NewBuf = 0;
        break;

    default:

        return_ACPI_STATUS (AE_TYPE);
    }

    *ResultDesc = ReturnDesc;
    return_ACPI_STATUS (AE_OK);
}
