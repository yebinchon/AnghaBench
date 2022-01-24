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
typedef  int /*<<< orphan*/  uint16_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int const**,int*,int const**,int*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int const*,int) ; 

__attribute__((used)) static uint8_t * FUNC3( uint16_t i_res, bool b_interlaced, int *pi_avcC )
{
    const uint8_t *p_pps, *p_sps;
    uint8_t i_sps, i_pps;
    uint8_t *p_data = NULL;
    const uint8_t rgi_startcode[] = {0,0,0,1};
    if( FUNC0( i_res, b_interlaced,
                     &p_sps, &i_sps, &p_pps, &i_pps ) )
    {
        int i_size = i_pps + i_sps + 2 * 5;
        if( (p_data = (uint8_t *) FUNC1(i_size)) )
        {
            *pi_avcC = i_size;
            FUNC2(p_data, rgi_startcode, 4);
            p_data[4] = 0x67; /* SPS_NAL Header */
            FUNC2(&p_data[5], p_sps, i_sps);
            FUNC2(&p_data[5 + i_sps], rgi_startcode, 4);
            p_data[9 + i_sps] = 0x68; /* PPS_NAL Header */
            FUNC2(&p_data[10 + i_sps], p_pps, i_pps);
        }
    }
    return p_data;
}