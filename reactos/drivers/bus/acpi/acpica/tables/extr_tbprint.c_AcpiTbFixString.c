
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ACPI_SIZE ;


 int isprint (int) ;

__attribute__((used)) static void
AcpiTbFixString (
    char *String,
    ACPI_SIZE Length)
{

    while (Length && *String)
    {
        if (!isprint ((int) *String))
        {
            *String = '?';
        }

        String++;
        Length--;
    }
}
