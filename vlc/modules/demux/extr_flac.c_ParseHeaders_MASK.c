#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_14__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int ssize_t ;
struct TYPE_17__ {scalar_t__ i_byte_offset; scalar_t__ i_time_offset; } ;
typedef  TYPE_2__ flac_seekpoint_t ;
struct TYPE_16__ {scalar_t__ i_rate; int /*<<< orphan*/  i_bitspersample; int /*<<< orphan*/  i_channels; } ;
struct TYPE_18__ {int* p_extra; int i_extra; TYPE_1__ audio; } ;
typedef  TYPE_3__ es_format_t ;
struct TYPE_19__ {int /*<<< orphan*/  s; TYPE_5__* p_sys; } ;
typedef  TYPE_4__ demux_t ;
struct TYPE_15__ {scalar_t__ sample_rate; int /*<<< orphan*/  total_samples; int /*<<< orphan*/  bits_per_sample; int /*<<< orphan*/  channels; } ;
struct TYPE_20__ {int b_stream_info; int /*<<< orphan*/  i_data_pos; TYPE_14__ stream_info; int /*<<< orphan*/  i_length; int /*<<< orphan*/  seekpoint; int /*<<< orphan*/  i_seekpoint; } ;
typedef  TYPE_5__ demux_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,TYPE_14__*) ; 
 int FLAC_STREAMINFO_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int FUNC2 (int const*) ; 
 int META_COMMENT ; 
 int META_PICTURE ; 
 int META_SEEKTABLE ; 
 int META_STREAMINFO ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int const*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int const*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int const*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int* FUNC7 (int) ; 
 scalar_t__ FUNC8 (int*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,char*,...) ; 
 int FUNC10 (int /*<<< orphan*/ ,int const**,int) ; 
 int FUNC11 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_2__* FUNC14 (int) ; 

__attribute__((used)) static int  FUNC15( demux_t *p_demux, es_format_t *p_fmt )
{
    demux_sys_t *p_sys = p_demux->p_sys;
    ssize_t i_peek;
    const uint8_t *p_peek;
    bool b_last;

    /* Be sure we have seekpoint 0 */
    flac_seekpoint_t *s = FUNC14( sizeof (*s) );
    s->i_time_offset = 0;
    s->i_byte_offset = 0;
    FUNC6( p_sys->i_seekpoint, p_sys->seekpoint, s );

    uint8_t header[4];
    if( FUNC11( p_demux->s, header, 4) < 4)
        return VLC_EGENERIC;

    if (FUNC8(header, "fLaC", 4))
        return VLC_EGENERIC;

    b_last = 0;
    while( !b_last )
    {
        int i_len;
        int i_type;

        i_peek = FUNC10( p_demux->s, &p_peek, 4 );
        if( i_peek < 4 )
            break;
        b_last = p_peek[0]&0x80;
        i_type = p_peek[0]&0x7f;
        i_len  = FUNC2( &p_peek[1] );

        if( i_type == META_STREAMINFO && p_fmt->p_extra == NULL )
        {
            if( i_len != FLAC_STREAMINFO_SIZE ) {
                FUNC9( p_demux, "invalid size %d for a STREAMINFO metadata block", i_len );
                return VLC_EGENERIC;
            }

            p_fmt->p_extra = FUNC7( FLAC_STREAMINFO_SIZE );
            if( p_fmt->p_extra == NULL )
                return VLC_EGENERIC;

            if( FUNC11( p_demux->s, NULL, 4) < 4)
            {
                FUNC1( p_fmt->p_extra );
                return VLC_EGENERIC;
            }
            if( FUNC11( p_demux->s, p_fmt->p_extra,
                                 FLAC_STREAMINFO_SIZE ) != FLAC_STREAMINFO_SIZE )
            {
                FUNC9( p_demux, "failed to read STREAMINFO metadata block" );
                FUNC1( p_fmt->p_extra );
                return VLC_EGENERIC;
            }
            p_fmt->i_extra = FLAC_STREAMINFO_SIZE;

            /* */
            p_sys->b_stream_info = true;
            FUNC0( (uint8_t *) p_fmt->p_extra, &p_sys->stream_info );

            p_fmt->audio.i_rate = p_sys->stream_info.sample_rate;
            p_fmt->audio.i_channels = p_sys->stream_info.channels;
            p_fmt->audio.i_bitspersample = p_sys->stream_info.bits_per_sample;
            if( p_sys->stream_info.sample_rate > 0 )
                p_sys->i_length = FUNC13(p_sys->stream_info.total_samples,
                                  p_sys->stream_info.sample_rate);

            continue;
        }
        else if( i_type == META_SEEKTABLE )
        {
            i_peek = FUNC10( p_demux->s, &p_peek, 4+i_len );
            if( i_peek == 4+i_len )
                FUNC5( p_demux, p_peek, i_peek, p_fmt->audio.i_rate );
        }
        else if( i_type == META_COMMENT )
        {
            i_peek = FUNC10( p_demux->s, &p_peek, 4+i_len );
            if( i_peek == 4+i_len )
                FUNC3( p_demux, p_peek, i_peek );
        }
        else if( i_type == META_PICTURE )
        {
            i_peek = FUNC10( p_demux->s, &p_peek, 4+i_len );
            if( i_peek == 4+i_len )
                FUNC4( p_demux, p_peek, i_peek );
        }

        if( FUNC11( p_demux->s, NULL, 4+i_len ) < 4+i_len )
            break;
    }

    /* */
    p_sys->i_data_pos = FUNC12( p_demux->s );

    if ( p_fmt->p_extra == NULL )
        return VLC_EGENERIC;

    return VLC_SUCCESS;
}