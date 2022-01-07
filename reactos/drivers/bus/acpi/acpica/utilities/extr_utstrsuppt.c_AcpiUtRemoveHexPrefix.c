
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char ACPI_ASCII_ZERO ;
 char tolower (int) ;

void
AcpiUtRemoveHexPrefix (
    char **String)
{
    if ((**String == ACPI_ASCII_ZERO) &&
        (tolower ((int) *(*String + 1)) == 'x'))
    {
        *String += 2;
    }
}
