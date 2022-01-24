#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_9__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  float uint8_t ;
typedef  int /*<<< orphan*/  psz_url ;
typedef  int /*<<< orphan*/  es_format_t ;
struct TYPE_11__ {int /*<<< orphan*/  force; } ;
struct TYPE_12__ {int /*<<< orphan*/  out; TYPE_3__* p_sys; int /*<<< orphan*/  pf_control; int /*<<< orphan*/  pf_demux; TYPE_1__ obj; int /*<<< orphan*/  s; } ;
typedef  TYPE_2__ demux_t ;
struct TYPE_13__ {int b_start; int b_stream_info; scalar_t__ i_seekpoint; scalar_t__ i_attachments; scalar_t__ i_title_seekpoints; scalar_t__ i_cover_idx; int /*<<< orphan*/ * p_es; TYPE_6__* p_packetizer; int /*<<< orphan*/ * p_meta; TYPE_9__** attachments; scalar_t__ i_cover_score; TYPE_9__** pp_title_seekpoints; TYPE_9__** seekpoint; int /*<<< orphan*/ * p_current_block; int /*<<< orphan*/  i_pts; scalar_t__ i_length; scalar_t__ i_next_block_flags; } ;
typedef  TYPE_3__ demux_sys_t ;
struct TYPE_15__ {char* psz_name; } ;
struct TYPE_14__ {int /*<<< orphan*/  fmt_in; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIO_ES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  Control ; 
 int /*<<< orphan*/  Demux ; 
 scalar_t__ FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,TYPE_9__**) ; 
 int /*<<< orphan*/  VLC_CODEC_FLAC ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  VLC_TICK_INVALID ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 
 TYPE_6__* FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,char*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vlc_meta_ArtworkURL ; 
 int /*<<< orphan*/ * FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC13 (int /*<<< orphan*/ ,float const**,int) ; 

__attribute__((used)) static int FUNC14( vlc_object_t * p_this )
{
    demux_t     *p_demux = (demux_t*)p_this;
    demux_sys_t *p_sys;
    const uint8_t *p_peek;
    es_format_t fmt;

    /* Have a peep at the show. */
    if( FUNC13( p_demux->s, &p_peek, 4 ) < 4 ) return VLC_EGENERIC;

    if( p_peek[0]!='f' || p_peek[1]!='L' || p_peek[2]!='a' || p_peek[3]!='C' )
    {
        if( !p_demux->obj.force
         && !FUNC3( p_demux, "audio/flac" ) )
            return VLC_EGENERIC;

        /* User forced */
        FUNC8( p_demux, "this doesn't look like a flac stream, "
                 "continuing anyway" );
    }

    p_sys = FUNC7( sizeof( demux_sys_t ) );
    if( FUNC10(p_sys == NULL) )
        return VLC_ENOMEM;

    p_demux->pf_demux   = Demux;
    p_demux->pf_control = Control;
    p_demux->p_sys      = p_sys;
    p_sys->b_start = true;
    p_sys->i_next_block_flags = 0;
    p_sys->p_packetizer = NULL;
    p_sys->p_meta = NULL;
    p_sys->i_length = 0;
    p_sys->i_pts = VLC_TICK_INVALID;
    p_sys->b_stream_info = false;
    p_sys->p_es = NULL;
    p_sys->p_current_block = NULL;
    FUNC2( p_sys->i_seekpoint, p_sys->seekpoint );
    FUNC2( p_sys->i_attachments, p_sys->attachments);
    FUNC2( p_sys->i_title_seekpoints, p_sys->pp_title_seekpoints );
    p_sys->i_cover_idx = 0;
    p_sys->i_cover_score = 0;

    FUNC5( &fmt, AUDIO_ES, VLC_CODEC_FLAC );

    /* We need to read and store the STREAMINFO metadata into fmt extra */
    if( FUNC1( p_demux, &fmt ) )
        goto error;

    /* Load the FLAC packetizer */
    p_sys->p_packetizer = FUNC4( p_demux, &fmt, "flac" );
    if( !p_sys->p_packetizer )
        goto error;

    if( p_sys->i_cover_idx < p_sys->i_attachments )
    {
        char psz_url[128];
        if( !p_sys->p_meta )
            p_sys->p_meta = FUNC11();
        FUNC9( psz_url, sizeof(psz_url), "attachment://%s",
                  p_sys->attachments[p_sys->i_cover_idx]->psz_name );
        FUNC12( p_sys->p_meta, vlc_meta_ArtworkURL, psz_url );
    }

    p_sys->p_es = FUNC6( p_demux->out, &p_sys->p_packetizer->fmt_in );
    if( !p_sys->p_es )
        goto error;

    return VLC_SUCCESS;
error:
    FUNC0( p_this );
    return VLC_EGENERIC;
}