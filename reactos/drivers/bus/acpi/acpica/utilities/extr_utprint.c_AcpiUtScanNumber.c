
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT64 ;


 int AcpiUtShortMultiply (int ,int,int *) ;
 scalar_t__ isdigit (int) ;

const char *
AcpiUtScanNumber (
    const char *String,
    UINT64 *NumberPtr)
{
    UINT64 Number = 0;


    while (isdigit ((int) *String))
    {
        AcpiUtShortMultiply (Number, 10, &Number);
        Number += *(String++) - '0';
    }

    *NumberPtr = Number;
    return (String);
}
