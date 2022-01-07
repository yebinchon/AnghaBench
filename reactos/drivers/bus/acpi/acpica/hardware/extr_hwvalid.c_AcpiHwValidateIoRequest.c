
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_3__ {int End; int Start; scalar_t__ OsiDependency; int Name; } ;
typedef int ACPI_STATUS ;
typedef TYPE_1__ ACPI_PORT_INFO ;
typedef int ACPI_IO_ADDRESS ;


 int ACPI_DB_IO ;
 int ACPI_DB_VALUES ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_DIV_8 (int) ;
 int ACPI_ERROR (int ) ;
 int ACPI_FORMAT_UINT64 (int) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_PORT_INFO_ENTRIES ;
 int ACPI_UINT16_MAX ;
 int AE_AML_ILLEGAL_ADDRESS ;
 int AE_BAD_PARAMETER ;
 int AE_INFO ;
 int AE_LIMIT ;
 int AE_OK ;
 scalar_t__ AcpiGbl_OsiData ;
 TYPE_1__* AcpiProtectedPorts ;
 int HwValidateIoRequest ;
 int return_ACPI_STATUS (int ) ;

__attribute__((used)) static ACPI_STATUS
AcpiHwValidateIoRequest (
    ACPI_IO_ADDRESS Address,
    UINT32 BitWidth)
{
    UINT32 i;
    UINT32 ByteWidth;
    ACPI_IO_ADDRESS LastAddress;
    const ACPI_PORT_INFO *PortInfo;


    ACPI_FUNCTION_TRACE (HwValidateIoRequest);




    if ((BitWidth != 8) &&
        (BitWidth != 16) &&
        (BitWidth != 32))
    {
        ACPI_ERROR ((AE_INFO,
            "Bad BitWidth parameter: %8.8X", BitWidth));
        return_ACPI_STATUS (AE_BAD_PARAMETER);
    }

    PortInfo = AcpiProtectedPorts;
    ByteWidth = ACPI_DIV_8 (BitWidth);
    LastAddress = Address + ByteWidth - 1;

    ACPI_DEBUG_PRINT ((ACPI_DB_IO,
        "Address %8.8X%8.8X LastAddress %8.8X%8.8X Length %X",
        ACPI_FORMAT_UINT64 (Address), ACPI_FORMAT_UINT64 (LastAddress),
        ByteWidth));



    if (LastAddress > ACPI_UINT16_MAX)
    {
        ACPI_ERROR ((AE_INFO,
            "Illegal I/O port address/length above 64K: %8.8X%8.8X/0x%X",
            ACPI_FORMAT_UINT64 (Address), ByteWidth));
        return_ACPI_STATUS (AE_LIMIT);
    }



    if (Address > AcpiProtectedPorts[ACPI_PORT_INFO_ENTRIES - 1].End)
    {
        return_ACPI_STATUS (AE_OK);
    }



    for (i = 0; i < ACPI_PORT_INFO_ENTRIES; i++, PortInfo++)
    {
        if ((Address <= PortInfo->End) && (LastAddress >= PortInfo->Start))
        {


            if (AcpiGbl_OsiData >= PortInfo->OsiDependency)
            {
                ACPI_DEBUG_PRINT ((ACPI_DB_VALUES,
                    "Denied AML access to port 0x%8.8X%8.8X/%X (%s 0x%.4X-0x%.4X)\n",
                    ACPI_FORMAT_UINT64 (Address), ByteWidth, PortInfo->Name,
                    PortInfo->Start, PortInfo->End));

                return_ACPI_STATUS (AE_AML_ILLEGAL_ADDRESS);
            }
        }



        if (LastAddress <= PortInfo->End)
        {
            break;
        }
    }

    return_ACPI_STATUS (AE_OK);
}
