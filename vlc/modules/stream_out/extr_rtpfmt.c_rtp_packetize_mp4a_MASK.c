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
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 int VLC_SUCCESS ; 
 scalar_t__ VLC_TICK_INVALID ; 
 int FUNC1 (int,int) ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int FUNC8( sout_stream_id_sys_t *id, block_t *in )
{
    int     i_max   = FUNC5 (id) - 4; /* payload max in one packet */
    int     i_count = ( in->i_buffer + i_max - 1 ) / i_max;

    uint8_t *p_data = in->p_buffer;
    int     i_data  = in->i_buffer;
    int     i;

    for( i = 0; i < i_count; i++ )
    {
        int           i_payload = FUNC1( i_max, i_data );
        block_t *out = FUNC2( 16 + i_payload );

        /* rtp common header */
        FUNC6( id, out, ((i == i_count - 1)?1:0),
                      (in->i_pts != VLC_TICK_INVALID ? in->i_pts : in->i_dts) );
        /* AU headers */
        /* AU headers length (bits) */
        out->p_buffer[12] = 0;
        out->p_buffer[13] = 2*8;
        /* for each AU length 13 bits + idx 3bits, */
        FUNC0( out->p_buffer + 14, (in->i_buffer << 3) | 0 );

        FUNC4( &out->p_buffer[16], p_data, i_payload );

        out->i_dts    = in->i_dts + i * in->i_length / i_count;
        out->i_length = in->i_length / i_count;

        FUNC7( id, out );

        p_data += i_payload;
        i_data -= i_payload;
    }

    FUNC3(in);
    return VLC_SUCCESS;
}