
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ACPI_SIZE ;


 scalar_t__ ACPI_SIZE_MAX ;

int
memcmp (
    void *VBuffer1,
    void *VBuffer2,
    ACPI_SIZE Count)
{
    char *Buffer1 = (char *) VBuffer1;
    char *Buffer2 = (char *) VBuffer2;


    for ( ; Count-- && (*Buffer1 == *Buffer2); Buffer1++, Buffer2++)
    {
    }

    return ((Count == ACPI_SIZE_MAX) ? 0 : ((unsigned char) *Buffer1 -
        (unsigned char) *Buffer2));
}
