#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int* PLONG ;
typedef  scalar_t__* PCHAR ;
typedef  int LONG ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 

LONG
FUNC1(PCHAR *Address, PLONG Value)
{
    LONG NumChars = 0;
    LONG Hex;

    *Value = 0;

    while (**Address)
    {
        Hex = FUNC0(**Address);
        if (Hex >= 0)
        {
            *Value = (*Value << 4) | Hex;
            NumChars++;
        }
        else
        {
            break;
        }

        (*Address)++;
    }

    return NumChars;
}