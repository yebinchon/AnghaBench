
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ACPI_SIZE ;


 scalar_t__ memcmp (char*,char*,scalar_t__) ;
 scalar_t__ strlen (char*) ;

char *
strstr (
    char *String1,
    char *String2)
{
    ACPI_SIZE Length;


    Length = strlen (String2);
    if (!Length)
    {
        return (String1);
    }

    while (strlen (String1) >= Length)
    {
        if (memcmp (String1, String2, Length) == 0)
        {
            return (String1);
        }
        String1++;
    }

    return (((void*)0));
}
