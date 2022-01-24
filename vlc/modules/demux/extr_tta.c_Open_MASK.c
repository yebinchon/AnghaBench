#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  size_t uint32_t ;
struct TYPE_12__ {int i_rate; void* i_bitspersample; void* i_channels; } ;
struct TYPE_13__ {int i_extra; int /*<<< orphan*/ * p_extra; TYPE_2__ audio; } ;
typedef  TYPE_3__ es_format_t ;
struct TYPE_11__ {int /*<<< orphan*/  force; } ;
struct TYPE_14__ {int /*<<< orphan*/  out; int /*<<< orphan*/  s; TYPE_5__* p_sys; int /*<<< orphan*/  pf_control; int /*<<< orphan*/  pf_demux; TYPE_1__ obj; } ;
typedef  TYPE_4__ demux_t ;
struct TYPE_15__ {int i_datalength; int i_framelength; int i_totalframes; int i_start; int /*<<< orphan*/  p_es; void** pi_seektable; scalar_t__ i_currentframe; } ;
typedef  TYPE_5__ demux_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIO_ES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  Control ; 
 int /*<<< orphan*/  Demux ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 int INT_MAX ; 
 int TTA_FRAMETIME ; 
 int /*<<< orphan*/  VLC_CODEC_TTA ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 void** FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 void* FUNC7 (int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/  const*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,char*) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/  const**,int) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC14( vlc_object_t * p_this )
{
    demux_t     *p_demux = (demux_t*)p_this;
    demux_sys_t *p_sys;
    es_format_t fmt;
    const uint8_t *p_peek;
    uint8_t     p_header[22];
    uint8_t     *p_fullheader;
    int         i_seektable_size = 0;
    //char        psz_info[4096];
    //module_t    *p_id3;

    if( FUNC12( p_demux->s, &p_peek, 4 ) < 4 )
        return VLC_EGENERIC;

    if( FUNC8( p_peek, "TTA1", 4 ) )
    {
        if( !p_demux->obj.force )
            return VLC_EGENERIC;

        /* User forced */
        FUNC10( p_demux, "this doesn't look like a true-audio stream, "
                 "continuing anyway" );
    }

    if( FUNC13( p_demux->s, p_header, 22 ) < 22 )
        return VLC_EGENERIC;

    /* Fill p_demux fields */
    p_demux->pf_demux = Demux;
    p_demux->pf_control = Control;
    p_demux->p_sys = p_sys = FUNC7( sizeof( demux_sys_t ) );
    if( !p_sys )
        return VLC_ENOMEM;

    p_sys->pi_seektable = NULL;

    /* Read the metadata */
    FUNC5( &fmt, AUDIO_ES, VLC_CODEC_TTA );
    fmt.audio.i_channels = FUNC2( &p_header[6] );
    fmt.audio.i_bitspersample = FUNC2( &p_header[8] );
    fmt.audio.i_rate = FUNC1( &p_header[10] );
    if( fmt.audio.i_rate == 0 || /* Avoid divide by 0 */
        fmt.audio.i_rate > ( 1 << 20 ) /* Avoid i_framelength overflow */ )
    {
        FUNC11( p_demux, "Wrong sample rate" );
        goto error;
    }

    p_sys->i_datalength = FUNC1( &p_header[14] );
    p_sys->i_framelength = TTA_FRAMETIME * fmt.audio.i_rate;

    p_sys->i_totalframes = p_sys->i_datalength / p_sys->i_framelength +
                          ((p_sys->i_datalength % p_sys->i_framelength) != 0);
    p_sys->i_currentframe = 0;
    if( (INT_MAX - 22 - 4) / sizeof(uint32_t) < p_sys->i_totalframes )
        goto error;

    i_seektable_size = sizeof(uint32_t)*p_sys->i_totalframes;

    /* Store the header and Seektable for avcodec */
    fmt.i_extra = 22 + i_seektable_size + 4;
    fmt.p_extra = p_fullheader = FUNC7( fmt.i_extra );
    if( !p_fullheader )
    {
        fmt.i_extra = 0;
        goto error;
    }

    FUNC9( p_fullheader, p_header, 22 );
    p_fullheader += 22;
    if( FUNC13( p_demux->s, p_fullheader, i_seektable_size )
             != i_seektable_size )
        goto error;

    p_sys->pi_seektable = FUNC3( p_sys->i_totalframes, sizeof(uint32_t) );
    if( !p_sys->pi_seektable )
        goto error;
    for( uint32_t i = 0; i < p_sys->i_totalframes; i++ )
    {
        p_sys->pi_seektable[i] = FUNC1( p_fullheader );
        p_fullheader += 4;
    }

    if( 4 != FUNC13( p_demux->s, p_fullheader, 4 ) ) /* CRC */
        goto error;
    p_fullheader += 4;

    p_sys->p_es = FUNC6( p_demux->out, &fmt );
    p_sys->i_start = p_fullheader - (uint8_t *)fmt.p_extra;
    FUNC4( &fmt );

    return VLC_SUCCESS;
error:
    FUNC4( &fmt );
    FUNC0( p_this );
    return VLC_EGENERIC;
}