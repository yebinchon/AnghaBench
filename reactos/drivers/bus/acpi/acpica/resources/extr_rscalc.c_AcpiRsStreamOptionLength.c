
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT32 ;


 int ACPI_FUNCTION_ENTRY () ;
 scalar_t__ ACPI_ROUND_UP_TO_NATIVE_WORD (scalar_t__) ;

__attribute__((used)) static UINT32
AcpiRsStreamOptionLength (
    UINT32 ResourceLength,
    UINT32 MinimumAmlResourceLength)
{
    UINT32 StringLength = 0;


    ACPI_FUNCTION_ENTRY ();
    if (ResourceLength > MinimumAmlResourceLength)
    {


        StringLength = ResourceLength - MinimumAmlResourceLength - 1;
    }





    return ((UINT32) ACPI_ROUND_UP_TO_NATIVE_WORD (StringLength));
}
