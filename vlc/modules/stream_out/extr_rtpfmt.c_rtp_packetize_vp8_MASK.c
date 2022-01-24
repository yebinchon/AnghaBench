#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  sout_stream_id_sys_t ;
struct TYPE_7__ {int i_buffer; int* p_buffer; scalar_t__ i_pts; scalar_t__ i_dts; int i_length; } ;
typedef  TYPE_1__ block_t ;

/* Variables and functions */
 int RTP_VP8_HEADER_SIZE ; 
 int RTP_VP8_PAYLOAD_START ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 scalar_t__ VLC_TICK_INVALID ; 
 int FUNC0 (int,int) ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int FUNC7( sout_stream_id_sys_t *id, block_t *in )
{
    int     i_max   = FUNC4 (id) - RTP_VP8_HEADER_SIZE;
    int     i_count = ( in->i_buffer + i_max - 1 ) / i_max;

    uint8_t *p_data = in->p_buffer;
    int     i_data  = in->i_buffer;

    if ( i_max <= 0 )
    {
        FUNC2(in);
        return VLC_EGENERIC;
    }

    for( int i = 0; i < i_count; i++ )
    {
        int i_payload = FUNC0( i_max, i_data );
        block_t *out = FUNC1( RTP_VP8_PAYLOAD_START + i_payload );
        if ( out == NULL )
        {
            FUNC2(in);
            return VLC_ENOMEM;
        }

        /* VP8 payload header */
        /* All frames are marked as reference ones */
        if (i == 0)
            out->p_buffer[12] = 0x10; // partition start
        else
            out->p_buffer[12] = 0;

        /* rtp common header */
        FUNC5( id, out, (i == i_count - 1),
                      (in->i_pts != VLC_TICK_INVALID ? in->i_pts : in->i_dts) );
        FUNC3( &out->p_buffer[RTP_VP8_PAYLOAD_START], p_data, i_payload );

        out->i_dts    = in->i_dts + i * in->i_length / i_count;
        out->i_length = in->i_length / i_count;

        FUNC6( id, out );

        p_data += i_payload;
        i_data -= i_payload;
    }

    FUNC2(in);
    return VLC_SUCCESS;
}