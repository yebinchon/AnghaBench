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
typedef  int vlc_tick_t ;
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  sout_stream_id_sys_t ;
struct TYPE_5__ {int i_dts; int i_length; int* p_buffer; } ;
typedef  TYPE_1__ block_t ;

/* Variables and functions */
 int VLC_SUCCESS ; 
 int FUNC0 (int,int const) ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int const*,int const) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC6( sout_stream_id_sys_t *id,
                        const uint8_t *p_data, int i_data, vlc_tick_t i_pts,
                        vlc_tick_t i_dts, bool b_last, vlc_tick_t i_length )
{
    const int i_max = FUNC3 (id); /* payload max in one packet */
    int i_nal_hdr;
    int i_nal_type;

    if( i_data < 2 )
        return VLC_SUCCESS;

    i_nal_hdr = p_data[0];
    i_nal_type = i_nal_hdr&0x1f;

    /* */
    if( i_data <= i_max )
    {
        /* Single NAL unit packet */
        block_t *out = FUNC1( 12 + i_data );
        out->i_dts    = i_dts;
        out->i_length = i_length;

        /* */
        FUNC4( id, out, b_last, i_pts );

        FUNC2( &out->p_buffer[12], p_data, i_data );

        FUNC5( id, out );
    }
    else
    {
        /* FU-A Fragmentation Unit without interleaving */
        const int i_count = ( i_data-1 + i_max-2 - 1 ) / (i_max-2);
        int i;

        p_data++;
        i_data--;

        for( i = 0; i < i_count; i++ )
        {
            const int i_payload = FUNC0( i_data, i_max-2 );
            block_t *out = FUNC1( 12 + 2 + i_payload );
            out->i_dts    = i_dts + i * i_length / i_count;
            out->i_length = i_length / i_count;

            /* */
            FUNC4( id, out, (b_last && i_payload == i_data),
                                    i_pts );
            /* FU indicator */
            out->p_buffer[12] = 0x00 | (i_nal_hdr & 0x60) | 28;
            /* FU header */
            out->p_buffer[13] = ( i == 0 ? 0x80 : 0x00 ) | ( (i == i_count-1) ? 0x40 : 0x00 )  | i_nal_type;
            FUNC2( &out->p_buffer[14], p_data, i_payload );

            FUNC5( id, out );

            i_data -= i_payload;
            p_data += i_payload;
        }
    }
    return VLC_SUCCESS;
}