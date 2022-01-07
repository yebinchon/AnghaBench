
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ACPI_SIZE ;



char *
strncat (
    char *DstString,
    const char *SrcString,
    ACPI_SIZE Count)
{
    char *String;


    if (Count)
    {


        for (String = DstString; *String++; )
        { ; }



        for (--String; (*String++ = *SrcString++) && --Count; )
        { ; }



        if (!Count)
        {
            *String = 0;
        }
    }

    return (DstString);
}
