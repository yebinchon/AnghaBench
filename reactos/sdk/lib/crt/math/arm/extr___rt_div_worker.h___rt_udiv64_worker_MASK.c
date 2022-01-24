#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT3264 ;
struct TYPE_3__ {int quotient; int modulus; } ;
typedef  scalar_t__ INT3264 ;
typedef  TYPE_1__ ARM_DIVRESULT ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 

void
FUNC2(
    ARM_DIVRESULT *result,
    UINT3264 divisor,
    UINT3264 dividend)
{
    UINT3264 shift;
    UINT3264 mask;
    UINT3264 quotient;
#ifdef _SIGNED_DIV_
    int dividend_sign;
    int divisor_sign;
#endif // _SIGNED_DIV_

    if (divisor == 0)
    {
        /* Raise divide by zero error */
        FUNC1();
    }

#ifdef _SIGNED_DIV_
    if ((INT3264)dividend < 0)
    {
        dividend_sign = 1;
        dividend = -(INT3264)dividend;
    }

    if ((INT3264)divisor < 0)
    {
        divisor_sign = 1;
        divisor = -(INT3264)divisor;
    }
#endif // _SIGNED_DIV_

    if (divisor > dividend)
    {
        result->quotient = 0;
        result->modulus = divisor;
        return;
    }

    /* Get the difference in count of leading zeros between dividend and divisor */
    shift = FUNC0(divisor);
    shift -= FUNC0(dividend);

    /* Shift the divisor to the left, so that it's highest bit is the same
       as the highest bit of the dividend */
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

#ifdef _SIGNED_DIV_
    if (dividend_sign ^ divisor_sign)
    {
        quotient = -(INT3264)quotient;
    }

    if (dividend_sign)
    {
        dividend = -(INT3264)dividend;
    }
#endif // _SIGNED_DIV_

    result->quotient = quotient;
    result->modulus = dividend;
    return;
}