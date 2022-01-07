
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT8 ;
typedef int UINT64 ;


 int ACPI_FUNCTION_ENTRY () ;
 char AcpiUtHexToAsciiChar (int ,int) ;

void
AcpiExPciClsToString (
    char *OutString,
    UINT8 ClassCode[3])
{

    ACPI_FUNCTION_ENTRY ();




    OutString[0] = AcpiUtHexToAsciiChar ((UINT64) ClassCode[0], 4);
    OutString[1] = AcpiUtHexToAsciiChar ((UINT64) ClassCode[0], 0);
    OutString[2] = AcpiUtHexToAsciiChar ((UINT64) ClassCode[1], 4);
    OutString[3] = AcpiUtHexToAsciiChar ((UINT64) ClassCode[1], 0);
    OutString[4] = AcpiUtHexToAsciiChar ((UINT64) ClassCode[2], 4);
    OutString[5] = AcpiUtHexToAsciiChar ((UINT64) ClassCode[2], 0);
    OutString[6] = 0;
}
