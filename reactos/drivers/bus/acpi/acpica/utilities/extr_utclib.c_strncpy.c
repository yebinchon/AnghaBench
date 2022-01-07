
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ACPI_SIZE ;



char *
strncpy (
    char *DstString,
    const char *SrcString,
    ACPI_SIZE Count)
{
    char *String = DstString;




    for (String = DstString;
        Count && (Count--, (*String++ = *SrcString++)); )
    {;}



    while (Count--)
    {
        *String = 0;
        String++;
    }



    return (DstString);
}
