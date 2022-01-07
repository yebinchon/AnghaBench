
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UINT8 ;


 int AcpiOsPrintf (char*,...) ;

__attribute__((used)) static void
AcpiRsDumpShortByteList (
    UINT8 Length,
    UINT8 *Data)
{
    UINT8 i;


    for (i = 0; i < Length; i++)
    {
        AcpiOsPrintf ("%X ", Data[i]);
    }

    AcpiOsPrintf ("\n");
}
