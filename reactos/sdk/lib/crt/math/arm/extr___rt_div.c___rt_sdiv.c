
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int modulus; int quotient; } ;
typedef int ARM_UDIVRESULT ;
typedef TYPE_1__ ARM_SDIVRESULT ;


 int __rt_udiv_internal (int *,int,int) ;

ARM_SDIVRESULT
__rt_sdiv(
    int divisor,
    int dividend)
{
    ARM_SDIVRESULT result;
    int divisor_sign, dividend_sign;

    dividend_sign = divisor & 0x80000000;
    if (dividend_sign)
    {
        dividend = -dividend;
    }

    divisor_sign = divisor & 0x80000000;
    if (divisor_sign)
    {
        divisor = -divisor;
    }

    __rt_udiv_internal((ARM_UDIVRESULT*)&result, divisor, dividend);

    if (dividend_sign ^ divisor_sign)
    {
        result.quotient = -result.quotient;
    }

    if (dividend_sign)
    {
        result.modulus = -result.modulus;
    }

    return result;
}
