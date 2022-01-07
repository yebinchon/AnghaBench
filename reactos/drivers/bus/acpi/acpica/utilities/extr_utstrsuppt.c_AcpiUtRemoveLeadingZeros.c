
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char ACPI_ASCII_ZERO ;

char
AcpiUtRemoveLeadingZeros (
    char **String)
{

    while (**String == ACPI_ASCII_ZERO)
    {
        *String += 1;
    }

    return (**String);
}
