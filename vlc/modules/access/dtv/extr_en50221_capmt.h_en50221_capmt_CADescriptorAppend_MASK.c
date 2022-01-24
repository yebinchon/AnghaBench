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
typedef  size_t uint8_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (size_t*) ; 
 int /*<<< orphan*/  FUNC1 (size_t*,size_t const*,size_t) ; 
 size_t* FUNC2 (size_t*,size_t) ; 

__attribute__((used)) static inline void FUNC3( uint8_t **p_desc, size_t *pi_desc,
                                                     const uint8_t *p_data, uint8_t i_data )
{
    uint8_t *p_realloc = FUNC2( *p_desc, *pi_desc + i_data + 2 );
    if( FUNC0(p_realloc) )
    {
        *p_desc = p_realloc;
        p_realloc[*pi_desc] = 0x09;
        p_realloc[*pi_desc + 1] = i_data;
        FUNC1( &p_realloc[*pi_desc + 2], p_data, i_data );
        *pi_desc = *pi_desc + i_data + 2;
    }
}