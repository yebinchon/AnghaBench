
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT32 ;
typedef scalar_t__ ACPI_SIZE ;



ACPI_SIZE
strlen (
    const char *String)
{
    UINT32 Length = 0;




    while (*String)
    {
        Length++;
        String++;
    }

    return (Length);
}
