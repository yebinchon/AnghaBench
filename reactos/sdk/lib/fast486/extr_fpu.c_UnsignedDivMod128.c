
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long ULONGLONG ;
typedef unsigned long long ULONG ;
typedef int* PULONGLONG ;
typedef int BOOLEAN ;


 int ASSERT (int) ;
 unsigned long long CountLeadingZeros64 (unsigned long long) ;
 scalar_t__ TRUE ;

__attribute__((used)) static ULONGLONG
UnsignedDivMod128(ULONGLONG DividendLow,
                  ULONGLONG DividendHigh,
                  ULONGLONG Divisor,
                  PULONGLONG QuotientLow,
                  PULONGLONG QuotientHigh)
{
    ULONGLONG ValueLow = DividendLow;
    ULONGLONG ValueHigh = DividendHigh;
    ULONGLONG CurrentLow = 0ULL;
    ULONGLONG CurrentHigh = Divisor;
    ULONG Bits;

    ASSERT(Divisor != 0ULL);


    *QuotientLow = *QuotientHigh = 0ULL;


    if ((DividendHigh == 0ULL) && (DividendLow < Divisor)) return ValueLow;


    Bits = CountLeadingZeros64(CurrentHigh);
    CurrentHigh <<= Bits;

    while (TRUE)
    {

        *QuotientHigh <<= 1;
        *QuotientHigh |= *QuotientLow >> 63;
        *QuotientLow <<= 1;


        if ((ValueHigh > CurrentHigh)
            || ((ValueHigh == CurrentHigh) && (ValueLow >= CurrentLow)))
        {
            BOOLEAN Carry = ValueLow < CurrentLow;


            ValueHigh -= CurrentHigh;
            ValueLow -= CurrentLow;
            if (Carry) ValueHigh--;


            *QuotientLow |= 1;


            if ((ValueHigh == 0ULL) && (ValueLow < Divisor)) break;
        }


        CurrentLow >>= 1;
        CurrentLow |= (CurrentHigh & 1) << 63;
        CurrentHigh >>= 1;
    }





    Bits = CountLeadingZeros64(Divisor);
    if (CurrentHigh > 0ULL) Bits += 64 - CountLeadingZeros64(CurrentHigh);
    else Bits -= CountLeadingZeros64(CurrentLow);

    if (Bits >= 64)
    {
        *QuotientHigh = *QuotientLow;
        *QuotientLow = 0ULL;
        Bits -= 64;
    }

    if (Bits)
    {

        *QuotientHigh <<= Bits;
        *QuotientHigh |= *QuotientLow >> (64 - Bits);
        *QuotientLow <<= Bits;
    }


    return ValueLow;
}
