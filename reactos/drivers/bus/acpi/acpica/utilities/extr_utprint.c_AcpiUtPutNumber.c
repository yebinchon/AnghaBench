
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
typedef scalar_t__ UINT64 ;
typedef scalar_t__ BOOLEAN ;


 char* AcpiGbl_LowerHexDigits ;
 char* AcpiGbl_UpperHexDigits ;
 int AcpiUtDivide (scalar_t__,int ,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static char *
AcpiUtPutNumber (
    char *String,
    UINT64 Number,
    UINT8 Base,
    BOOLEAN Upper)
{
    const char *Digits;
    UINT64 DigitIndex;
    char *Pos;


    Pos = String;
    Digits = Upper ? AcpiGbl_UpperHexDigits : AcpiGbl_LowerHexDigits;

    if (Number == 0)
    {
        *(Pos++) = '0';
    }
    else
    {
        while (Number)
        {
            (void) AcpiUtDivide (Number, Base, &Number, &DigitIndex);
            *(Pos++) = Digits[DigitIndex];
        }
    }


    return (Pos);
}
