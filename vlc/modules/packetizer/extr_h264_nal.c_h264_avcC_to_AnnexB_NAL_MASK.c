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
 int const* annexb_startcode4 ; 
 size_t FUNC0 (int const*,size_t) ; 
 int* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (int*,int const*,int) ; 

uint8_t *FUNC3( const uint8_t *p_buf, size_t i_buf,
                                  size_t *pi_result, uint8_t *pi_nal_length_size )
{
    *pi_result = FUNC0( p_buf, i_buf ); /* Does check min size */
    if( *pi_result == 0 )
        return NULL;

    /* Read infos in first 6 bytes */
    if ( pi_nal_length_size )
        *pi_nal_length_size = (p_buf[4] & 0x03) + 1;

    uint8_t *p_ret;
    uint8_t *p_out_buf = p_ret = FUNC1( *pi_result );
    if( !p_out_buf )
    {
        *pi_result = 0;
        return NULL;
    }

    p_buf += 5;

    for ( unsigned int j = 0; j < 2; j++ )
    {
        const unsigned int i_loop_end = p_buf[0] & (j == 0 ? 0x1f : 0xff);
        p_buf++;

        for ( unsigned int i = 0; i < i_loop_end; i++)
        {
            uint16_t i_nal_size = (p_buf[0] << 8) | p_buf[1];
            p_buf += 2;

            FUNC2( p_out_buf, annexb_startcode4, 4 );
            p_out_buf += 4;

            FUNC2( p_out_buf, p_buf, i_nal_size );
            p_out_buf += i_nal_size;
            p_buf += i_nal_size;
        }
    }

    return p_ret;
}