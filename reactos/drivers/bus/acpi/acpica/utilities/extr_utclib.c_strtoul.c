
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT8 ;
typedef int UINT32 ;
typedef scalar_t__ ACPI_STATUS ;


 int ACPI_SIGN_NEGATIVE ;
 int ACPI_SIGN_POSITIVE ;
 int ACPI_UINT32_MAX ;
 scalar_t__ AE_ERROR ;
 scalar_t__ AE_OK ;
 scalar_t__ isdigit (char const) ;
 scalar_t__ isspace (char const) ;
 scalar_t__ isupper (int) ;
 char tolower (char const) ;
 scalar_t__ toupper (char const) ;

UINT32
strtoul (
    const char *String,
    char **Terminator,
    UINT32 Base)
{
    UINT32 converted = 0;
    UINT32 index;
    UINT32 sign;
    const char *StringStart;
    UINT32 ReturnValue = 0;
    ACPI_STATUS Status = AE_OK;







    StringStart = String;
    while (isspace (*String) || *String == '\t')
    {
        ++String;
    }





    if (*String == '-')
    {
        sign = ACPI_SIGN_NEGATIVE;
        ++String;
    }
    else if (*String == '+')
    {
        ++String;
        sign = ACPI_SIGN_POSITIVE;
    }
    else
    {
        sign = ACPI_SIGN_POSITIVE;
    }





    if (Base == 0)
    {
        if (*String == '0')
        {
            if (tolower (*(++String)) == 'x')
            {
                Base = 16;
                ++String;
            }
            else
            {
                Base = 8;
            }
        }
        else
        {
            Base = 10;
        }
    }
    else if (Base < 2 || Base > 36)
    {




        goto done;
    }





    if (Base == 8 && *String == '0')
    {
        String++;
    }

    if (Base == 16 &&
        *String == '0' &&
        tolower (*(++String)) == 'x')
    {
        String++;
    }




    while (*String)
    {
        if (isdigit (*String))
        {
            index = (UINT32) ((UINT8) *String - '0');
        }
        else
        {
            index = (UINT32) toupper (*String);
            if (isupper (index))
            {
                index = index - 'A' + 10;
            }
            else
            {
                goto done;
            }
        }

        if (index >= Base)
        {
            goto done;
        }





        if (ReturnValue > ((ACPI_UINT32_MAX - (UINT32) index) /
                            (UINT32) Base))
        {
            Status = AE_ERROR;
            ReturnValue = 0;
        }
        else
        {
            ReturnValue *= Base;
            ReturnValue += index;
            converted = 1;
        }

        ++String;
    }

done:




    if (Terminator)
    {
        if (converted == 0 && ReturnValue == 0 && String != ((void*)0))
        {
            *Terminator = (char *) StringStart;
        }
        else
        {
            *Terminator = (char *) String;
        }
    }

    if (Status == AE_ERROR)
    {
        ReturnValue = ACPI_UINT32_MAX;
    }




    if (sign == ACPI_SIGN_NEGATIVE)
    {
        ReturnValue = (ACPI_UINT32_MAX - ReturnValue) + 1;
    }

    return (ReturnValue);
}
