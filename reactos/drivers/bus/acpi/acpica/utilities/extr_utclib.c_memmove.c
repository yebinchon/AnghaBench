
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_SIZE ;



void *
memmove (
    void *Dest,
    const void *Src,
    ACPI_SIZE Count)
{
    char *New = (char *) Dest;
    char *Old = (char *) Src;


    if (Old > New)
    {


        while (Count)
        {
            *New = *Old;
            New++;
            Old++;
            Count--;
        }
    }
    else if (Old < New)
    {


        New = New + Count - 1;
        Old = Old + Count - 1;
        while (Count)
        {
            *New = *Old;
            New--;
            Old--;
            Count--;
        }
    }

    return (Dest);
}
