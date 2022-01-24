#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  pu_dirac_vidfmt_frate ;
typedef  int /*<<< orphan*/  p_dirac_frate_tbl ;
struct TYPE_9__ {char* packet; int /*<<< orphan*/  bytes; } ;
typedef  TYPE_3__ ogg_packet ;
struct TYPE_7__ {int b_old; int b_interlaced; } ;
struct TYPE_8__ {TYPE_1__ dirac; } ;
struct TYPE_10__ {int b_force_backup; int /*<<< orphan*/  dts; TYPE_2__ special; } ;
typedef  TYPE_4__ logical_stream_t ;
typedef  int /*<<< orphan*/  bs_t ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC6( logical_stream_t *p_stream,
                                 ogg_packet *p_oggpacket )
{
    p_stream->special.dirac.b_old = (p_oggpacket->packet[0] == 'K');

    static const struct {
        uint32_t u_n /* numerator */, u_d /* denominator */;
    } p_dirac_frate_tbl[] = { /* table 10.3 */
        {1,1}, /* this first value is never used */
        {24000,1001}, {24,1}, {25,1}, {30000,1001}, {30,1},
        {50,1}, {60000,1001}, {60,1}, {15000,1001}, {25,2},
    };
    static const size_t u_dirac_frate_tbl = sizeof(p_dirac_frate_tbl)/sizeof(*p_dirac_frate_tbl);

    static const uint32_t pu_dirac_vidfmt_frate[] = { /* table C.1 */
        1, 9, 10, 9, 10, 9, 10, 4, 3, 7, 6, 4, 3, 7, 6, 2, 2, 7, 6, 7, 6,
    };
    static const size_t u_dirac_vidfmt_frate = sizeof(pu_dirac_vidfmt_frate)/sizeof(*pu_dirac_vidfmt_frate);

    bs_t bs;

    /* Backing up stream headers is not required -- seqhdrs are repeated
     * thoughout the stream at suitable decoding start points */
    p_stream->b_force_backup = false;

    /* read in useful bits from sequence header */
    FUNC1( &bs, p_oggpacket->packet, p_oggpacket->bytes );
    FUNC2( &bs, 13*8); /* parse_info_header */
    FUNC5( &bs ); /* major_version */
    FUNC5( &bs ); /* minor_version */
    FUNC5( &bs ); /* profile */
    FUNC5( &bs ); /* level */

    uint32_t u_video_format = FUNC5( &bs ); /* index */
    if( u_video_format >= u_dirac_vidfmt_frate )
    {
        /* don't know how to parse this ogg dirac stream */
        return false;
    }

    if( FUNC4( &bs ) )
    {
        FUNC5( &bs ); /* frame_width */
        FUNC5( &bs ); /* frame_height */
    }

    if( FUNC4( &bs ) )
    {
        FUNC5( &bs ); /* chroma_format */
    }

    if( FUNC4( &bs ) )
    {
        p_stream->special.dirac.b_interlaced = FUNC5( &bs ); /* scan_format */
    }
    else
        p_stream->special.dirac.b_interlaced = false;

    uint32_t u_n = p_dirac_frate_tbl[pu_dirac_vidfmt_frate[u_video_format]].u_n;
    uint32_t u_d = p_dirac_frate_tbl[pu_dirac_vidfmt_frate[u_video_format]].u_d;
    u_d = FUNC0( u_d, 1 );
    if( FUNC4( &bs ) )
    {
        uint32_t u_frame_rate_index = FUNC5( &bs );
        if( u_frame_rate_index >= u_dirac_frate_tbl )
        {
            /* something is wrong with this stream */
            return false;
        }
        u_n = p_dirac_frate_tbl[u_frame_rate_index].u_n;
        u_d = p_dirac_frate_tbl[u_frame_rate_index].u_d;
        if( u_frame_rate_index == 0 )
        {
            u_n = FUNC5( &bs ); /* frame_rate_numerator */
            u_d = FUNC5( &bs ); /* frame_rate_denominator */
        }
    }

    if( !u_n || !u_d )
        return false;

    /*
     * NB, OggDirac granulepos values are in units of 2*picturerate
     * When picture_coding_mode = 0 (progressive),
     * pt increments by two for each picture in display order.
     * When picture_coding_mode = 1 (interlace),
     * pt increments by one for each field in display order. */
    FUNC3( &p_stream->dts, 2 * u_n, u_d );

    return true;
}