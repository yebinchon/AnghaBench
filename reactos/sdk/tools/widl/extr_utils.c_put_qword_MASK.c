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

/* Variables and functions */
 scalar_t__ byte_swapped ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 

void FUNC1( unsigned int val )
{
    if (byte_swapped)
    {
        FUNC0( 0 );
        FUNC0( val );
    }
    else
    {
        FUNC0( val );
        FUNC0( 0 );
    }
}