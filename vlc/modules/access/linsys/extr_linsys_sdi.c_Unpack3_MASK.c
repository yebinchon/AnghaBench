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
typedef  int uint16_t ;

/* Variables and functions */
 int U ; 
 int V ; 
 int Y1 ; 
 int Y2 ; 

__attribute__((used)) static void FUNC0( const uint8_t *p_line, unsigned int i_size,
                     uint8_t *p_y, uint8_t *p_u, uint8_t *p_v )
{
    const uint8_t *p_end = p_line + i_size;

    while ( p_line < p_end )
    {
        uint16_t tmp;
        tmp = *p_u;
        tmp += 3 * (U + 2) / 4;
        *p_u++ = tmp / 4;
        *p_y++ = (Y1 + 2) / 4;
        tmp = *p_v;
        tmp += 3 * (V + 2) / 4;
        *p_v++ = tmp / 4;
        *p_y++ = (Y2 + 2) / 4;
        p_line += 5;
    }
}