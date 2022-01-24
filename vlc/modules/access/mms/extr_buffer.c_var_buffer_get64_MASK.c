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
typedef  int /*<<< orphan*/  var_buffer_t ;
typedef  int uint64_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 

uint64_t FUNC1( var_buffer_t *p_buf )
{
    uint64_t i_dw1, i_dw2;

    i_dw1 = FUNC0( p_buf );
    i_dw2 = FUNC0( p_buf );

    return( i_dw1 + ( i_dw2 << 32 ) );
}