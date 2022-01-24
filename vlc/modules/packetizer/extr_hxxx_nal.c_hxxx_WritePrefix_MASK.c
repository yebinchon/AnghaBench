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
typedef  int uint8_t ;
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 

__attribute__((used)) static inline void FUNC2( uint8_t i_nal_length_size, uint8_t *p_dest, uint32_t i_payload )
{
    if( i_nal_length_size == 4 )
        FUNC0( p_dest, i_payload );
    else if( i_nal_length_size == 2 )
        FUNC1( p_dest, i_payload );
    else
        *p_dest = i_payload;
}