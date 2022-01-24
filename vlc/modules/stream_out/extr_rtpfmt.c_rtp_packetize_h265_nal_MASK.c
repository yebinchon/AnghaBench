#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t vlc_tick_t ;
typedef  int uint8_t ;
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  sout_stream_id_sys_t ;
struct TYPE_5__ {size_t i_dts; size_t i_length; int* p_buffer; } ;
typedef  TYPE_1__ block_t ;

/* Variables and functions */
 int FUNC0 (int const*) ; 
 int VLC_SUCCESS ; 
 size_t FUNC1 (size_t,size_t const) ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int const*,size_t const) ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,int,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC7( sout_stream_id_sys_t *id,
                        const uint8_t *p_data, size_t i_data, vlc_tick_t i_pts,
                        vlc_tick_t i_dts, bool b_last, vlc_tick_t i_length )
{
    const size_t i_max = FUNC4 (id); /* payload max in one packet */

    if( i_data < 3 )
        return VLC_SUCCESS;

    /* */
    if( i_data <= i_max )
    {
        /* Single NAL unit packet */
        block_t *out = FUNC2( 12 + i_data );
        out->i_dts    = i_dts;
        out->i_length = i_length;

        /* */
        FUNC5( id, out, b_last, i_pts );

        FUNC3( &out->p_buffer[12], p_data, i_data );

        FUNC6( id, out );
    }
    else
    {
        const uint16_t i_nal_hdr = (FUNC0(p_data) & 0x81FF) | 0x6200 /* 49 */;
        const uint8_t i_nal_type = (p_data[0] & 0x7E) >> 1;

        /* FU-A Fragmentation Unit without interleaving */
        const size_t i_count = ( i_data-2 + i_max-3 - 2 ) / (i_max-3);

        p_data += 2;
        i_data -= 2;

        for( size_t i = 0; i < i_count; i++ )
        {
            const size_t i_payload = FUNC1( i_data, i_max-3 );
            block_t *out = FUNC2( 12 + 3 + i_payload );
            out->i_dts    = i_dts + i * i_length / i_count;
            out->i_length = i_length / i_count;

            /* */
            FUNC5( id, out, (b_last && i_payload == i_data),
                                    i_pts );
            /* FU indicator */
            out->p_buffer[12] = i_nal_hdr >> 8;
            out->p_buffer[13] = i_nal_hdr & 0x00FF;
            /* FU header */
            out->p_buffer[14] = ( i == 0 ? 0x80 : 0x00 ) | ( (i == i_count-1) ? 0x40 : 0x00 )  | i_nal_type;
            FUNC3( &out->p_buffer[15], p_data, i_payload );

            FUNC6( id, out );

            i_data -= i_payload;
            p_data += i_payload;
        }
    }
    return VLC_SUCCESS;
}