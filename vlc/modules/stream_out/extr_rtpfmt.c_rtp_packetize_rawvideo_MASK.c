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
typedef  int vlc_fourcc_t ;
typedef  int uint8_t ;
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  sout_stream_id_sys_t ;
struct TYPE_7__ {int* p_buffer; scalar_t__ i_pts; scalar_t__ i_dts; int /*<<< orphan*/  i_length; } ;
typedef  TYPE_1__ block_t ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
#define  VLC_CODEC_R420 129 
#define  VLC_CODEC_RGB24 128 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 scalar_t__ VLC_TICK_INVALID ; 
 TYPE_1__* FUNC2 (int const) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,int const) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int*,int*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static int FUNC12( sout_stream_id_sys_t *id, block_t *in, vlc_fourcc_t i_format  )
{
    int i_width, i_height;
    FUNC6( id, &i_width, &i_height );
    int i_pgroup; /* Size of a group of pixels */
    int i_xdec, i_ydec; /* sub-sampling factor in x and y */
    switch( i_format )
    {
        case VLC_CODEC_RGB24:
            i_pgroup = 3;
            i_xdec = i_ydec = 1;
            break;
        case VLC_CODEC_R420:
            i_pgroup = 6;
            i_xdec = i_ydec = 2;
            break;
        default:
            FUNC11();
    }

    static const int RTP_HEADER_LEN = 12;
    /* each partial or complete line needs a 6 byte header */
    const int i_line_header_size = 6;
    const int i_min_line_size = i_line_header_size + i_pgroup;
    uint8_t *p_data = in->p_buffer;

    for( uint16_t i_line_number = 0, i_column = 0; i_line_number < i_height; )
    {
        /* Allocate a packet */
        int i_payload = (int)(FUNC7 (id) - RTP_HEADER_LEN);
        if( i_payload <= 0 )
        {
            FUNC3( in );
            return VLC_EGENERIC;
        }

        block_t *out = FUNC2( RTP_HEADER_LEN + i_payload );
        if( FUNC10( out == NULL ) )
        {
            FUNC3( in );
            return VLC_ENOMEM;
        }

        /* Do headers first... */

        /* Write extended seqnum */
        uint8_t *p_outdata = out->p_buffer + RTP_HEADER_LEN;
        FUNC1( p_outdata, FUNC5( id ) );
        p_outdata += 2;
        i_payload -= 2;

        uint8_t *p_headers = p_outdata;

        for( uint8_t i_cont = 0x80; i_cont && i_payload > i_min_line_size; )
        {
            i_payload -= i_line_header_size;

            int i_pixels = i_width - i_column;
            int i_length = (i_pixels * i_pgroup) / i_xdec;

            const bool b_next_line = i_payload >= i_length;
            if( !b_next_line )
            {
                i_pixels = (i_payload / i_pgroup) * i_xdec;
                i_length = (i_pixels * i_pgroup) / i_xdec;
            }

            i_payload -= i_length;

            /* write length */
            FUNC1( p_outdata, i_length );
            p_outdata += 2;

            /* write line number */
            /* TODO: support interlaced */
            const uint8_t i_field = 0;
            FUNC1( p_outdata, i_line_number );
            *p_outdata |= i_field << 7;
            p_outdata += 2;

            /* continue if there's still room in the packet and we have more lines */
            i_cont = (i_payload > i_min_line_size && i_line_number < (i_height - i_ydec)) ? 0x80 : 0x00;

            /* write offset and continuation marker */
            FUNC1( p_outdata, i_column );
            *p_outdata |= i_cont;
            p_outdata += 2;

            if( b_next_line )
            {
                i_column = 0;
                i_line_number += i_ydec;
            }
            else
            {
                i_column += i_pixels;
            }
        }

        /* write the actual video data here */
        for( uint8_t i_cont = 0x80; i_cont; p_headers += i_line_header_size )
        {
            const uint16_t i_length = FUNC0( p_headers );
            const uint16_t i_lin = FUNC0( p_headers + 2 ) & 0x7fff;
            uint16_t i_offs = FUNC0( p_headers + 4 ) & 0x7fff;
            i_cont = p_headers[4] & 0x80;

            if( i_format == VLC_CODEC_RGB24 )
            {
                const int i_ystride = i_width * i_pgroup;
                i_offs /= i_xdec;
                FUNC4( p_outdata, p_data + (i_lin * i_ystride) + (i_offs * i_pgroup), i_length );
                p_outdata += i_length;
            }
            else if( i_format == VLC_CODEC_R420 )
            {
                FUNC4( p_outdata, p_data, i_length );
                p_outdata += i_length;
                p_data += i_length;
            }
            else FUNC11();
        }

        /* rtp common header */
        FUNC8( id, out, i_line_number >= i_height,
                (in->i_pts != VLC_TICK_INVALID ? in->i_pts : in->i_dts) );

        out->i_dts    = in->i_dts;
        out->i_length = in->i_length;

        FUNC9( id, out );
    }

    FUNC3( in );
    return VLC_SUCCESS;
}