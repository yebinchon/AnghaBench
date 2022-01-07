
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ACPI_SIZE ;



void *
memcpy (
    void *Dest,
    const void *Src,
    ACPI_SIZE Count)
{
    char *New = (char *) Dest;
    char *Old = (char *) Src;


    while (Count)
    {
        *New = *Old;
        New++;
        Old++;
        Count--;
    }

    return (Dest);
}
