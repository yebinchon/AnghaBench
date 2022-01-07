
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT32 ;
typedef scalar_t__ ACPI_SIZE ;



__attribute__((used)) static ACPI_SIZE
AcpiUtBoundStringLength (
    const char *String,
    ACPI_SIZE Count)
{
    UINT32 Length = 0;


    while (*String && Count)
    {
        Length++;
        String++;
        Count--;
    }

    return (Length);
}
