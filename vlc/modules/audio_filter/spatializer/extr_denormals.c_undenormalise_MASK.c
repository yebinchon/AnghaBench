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
 scalar_t__ FP_SUBNORMAL ; 
 scalar_t__ FUNC0 (float) ; 

float FUNC1( float f )
{
    if( FUNC0( f ) == FP_SUBNORMAL  )
        return 0.0;
    return f;
}