#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_9__ {int /*<<< orphan*/  force; } ;
struct TYPE_10__ {int /*<<< orphan*/  pf_control; int /*<<< orphan*/  out; int /*<<< orphan*/  pf_demux; int /*<<< orphan*/  s; TYPE_3__* p_sys; TYPE_1__ obj; } ;
typedef  TYPE_2__ demux_t ;
struct TYPE_11__ {int i_frame_size_estimate; int* p_peek; int b_still; int /*<<< orphan*/ * p_es; int /*<<< orphan*/  fmt; void* i_frame_length; void* i_still_end; scalar_t__ i_level; int /*<<< orphan*/ * psz_separator; int /*<<< orphan*/  i_time; } ;
typedef  TYPE_3__ demux_sys_t ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*,int*) ; 
 int /*<<< orphan*/  Control ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MimeDemux ; 
 int /*<<< orphan*/  MjpgDemux ; 
 int /*<<< orphan*/  VIDEO_ES ; 
 int /*<<< orphan*/  VLC_CODEC_MJPG ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  VLC_TICK_0 ; 
 void* VLC_TICK_INVALID ; 
 scalar_t__ FUNC2 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 size_t FUNC8 (char*) ; 
 char* FUNC9 (char*,char*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 float FUNC11 (TYPE_2__*,char*) ; 
 TYPE_3__* FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,char*) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 void* FUNC15 (float) ; 

__attribute__((used)) static int FUNC16( vlc_object_t * p_this )
{
    demux_t     *p_demux = (demux_t*)p_this;
    int         i_size;
    bool        b_matched = false;

    if( FUNC1( p_demux->s ) && !p_demux->obj.force )
        // let avformat handle this case
        return VLC_EGENERIC;

    demux_sys_t *p_sys = FUNC12( p_this, sizeof (*p_sys) );
    if( FUNC10(p_sys == NULL) )
        return VLC_ENOMEM;

    p_demux->p_sys      = p_sys;
    p_sys->p_es         = NULL;
    p_sys->i_time       = VLC_TICK_0;
    p_sys->i_level      = 0;

    p_sys->psz_separator = NULL;
    p_sys->i_frame_size_estimate = 15 * 1024;

    char *content_type = FUNC7( p_demux->s );
    if ( content_type )
    {
        //FIXME: this is not fully match to RFC
        char* boundary = FUNC9( content_type, "boundary=" );
        if( boundary )
        {
            boundary += FUNC8( "boundary=" );
            size_t len = FUNC8( boundary );
            if( len > 2 && boundary[0] == '"'
                && boundary[len-1] == '"' )
            {
                boundary[len-1] = '\0';
                boundary++;
            }
            p_sys->psz_separator = FUNC13( p_this, boundary );
            if( !p_sys->psz_separator )
            {
                FUNC5( content_type );
                return VLC_ENOMEM;
            }
        }
        FUNC5( content_type );
    }

    b_matched = FUNC0( p_demux, &i_size);
    if( b_matched )
    {
        p_demux->pf_demux = MimeDemux;
        if( FUNC14( p_demux->s, NULL, i_size ) < i_size )
            return VLC_EGENERIC;
    }
    else if( i_size == 0 )
    {
        /* 0xffd8 identify a JPEG SOI */
        if( p_sys->p_peek[0] == 0xFF && p_sys->p_peek[1] == 0xD8 )
        {
            FUNC6( p_demux, "JPEG SOI marker detected" );
            p_demux->pf_demux = MjpgDemux;
            p_sys->i_level++;
        }
        else
        {
            return VLC_EGENERIC;
        }
    }
    else
    {
        return VLC_EGENERIC;
    }

    /* Frame rate */
    float f_fps = FUNC11( p_demux, "mjpeg-fps" );

    p_sys->i_still_end = VLC_TICK_INVALID;
    if( FUNC2( p_demux, ".jpeg" ) ||
        FUNC2( p_demux, ".jpg" ) )
    {
        /* Plain JPEG file = single still picture */
        p_sys->b_still = true;
        if( f_fps == 0.f )
            /* Defaults to 1fps */
            f_fps = 1.f;
    }
    else
        p_sys->b_still = false;
    p_sys->i_frame_length = f_fps ? FUNC15(f_fps) : VLC_TICK_INVALID;

    FUNC3( &p_sys->fmt, VIDEO_ES, VLC_CODEC_MJPG );

    p_sys->p_es = FUNC4( p_demux->out, &p_sys->fmt );
    if( FUNC10(p_sys->p_es == NULL) )
        return VLC_ENOMEM;

    p_demux->pf_control = Control;
    return VLC_SUCCESS;
}