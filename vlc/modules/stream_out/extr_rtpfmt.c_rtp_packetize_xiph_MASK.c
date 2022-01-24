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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  sout_stream_id_sys_t ;
struct TYPE_7__ {int i_buffer; int i_length; scalar_t__ i_dts; int /*<<< orphan*/ * p_buffer; int /*<<< orphan*/  i_pts; } ;
typedef  TYPE_1__ block_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int VLC_SUCCESS ; 
 int XIPH_IDENT ; 
 int FUNC2 (int,int) ; 
 TYPE_1__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int FUNC9( sout_stream_id_sys_t *id, block_t *in )
{
    int     i_max   = FUNC6 (id) - 6; /* payload max in one packet */
    int     i_count = ( in->i_buffer + i_max - 1 ) / i_max;

    uint8_t *p_data = in->p_buffer;
    int     i_data  = in->i_buffer;

    for( int i = 0; i < i_count; i++ )
    {
        int           i_payload = FUNC2( i_max, i_data );
        block_t *out = FUNC3( 18 + i_payload );

        unsigned fragtype, numpkts;
        if (i_count == 1)
        {
            /* No fragmentation */
            fragtype = 0;
            numpkts = 1;
        }
        else
        {
            /* Fragmentation */
            numpkts = 0;
            if (i == 0)
                fragtype = 1;
            else if (i == i_count - 1)
                fragtype = 3;
            else
                fragtype = 2;
        }
        /* Ident:24, Fragment type:2, Vorbis/Theora Data Type:2, # of pkts:4 */
        uint32_t header = ((XIPH_IDENT & 0xffffff) << 8) |
                          (fragtype << 6) | (0 << 4) | numpkts;

        /* rtp common header */
        FUNC7( id, out, 0, in->i_pts);

        FUNC0( out->p_buffer + 12, header);
        FUNC1( out->p_buffer + 16, i_payload);
        FUNC5( &out->p_buffer[18], p_data, i_payload );

        out->i_dts    = in->i_dts + i * in->i_length / i_count;
        out->i_length = in->i_length / i_count;

        FUNC8( id, out );

        p_data += i_payload;
        i_data -= i_payload;
    }

    FUNC4(in);
    return VLC_SUCCESS;
}