
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT3264 ;
struct TYPE_3__ {int quotient; int modulus; } ;
typedef scalar_t__ INT3264 ;
typedef TYPE_1__ ARM_DIVRESULT ;


 int _CountLeadingZeros (int) ;
 int __brkdiv0 () ;

void
__rt_div_worker(
    ARM_DIVRESULT *result,
    UINT3264 divisor,
    UINT3264 dividend)
{
    UINT3264 shift;
    UINT3264 mask;
    UINT3264 quotient;





    if (divisor == 0)
    {

        __brkdiv0();
    }
    if (divisor > dividend)
    {
        result->quotient = 0;
        result->modulus = divisor;
        return;
    }


    shift = _CountLeadingZeros(divisor);
    shift -= _CountLeadingZeros(dividend);



    divisor <<= shift;

    mask = (UINT3264)1 << shift;

    quotient = 0;
    do
    {
        if (dividend >= divisor)
        {
            quotient |= mask;
            dividend -= divisor;
        }
        divisor >>= 1;
        mask >>= 1;
    }
    while (mask);
    result->quotient = quotient;
    result->modulus = dividend;
    return;
}
