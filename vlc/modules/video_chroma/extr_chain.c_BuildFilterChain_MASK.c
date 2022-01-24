#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_9__ ;
typedef  struct TYPE_23__   TYPE_8__ ;
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vlc_fourcc_t ;
struct TYPE_23__ {scalar_t__ const i_codec; } ;
struct TYPE_22__ {scalar_t__ const i_codec; } ;
struct TYPE_18__ {TYPE_8__ fmt_out; TYPE_7__ fmt_in; int /*<<< orphan*/  pf_video_mouse; int /*<<< orphan*/  p_cfg; int /*<<< orphan*/  psz_name; TYPE_2__* p_sys; } ;
typedef  TYPE_1__ filter_t ;
struct TYPE_19__ {int /*<<< orphan*/  p_chain; TYPE_9__* p_video_filter; } ;
typedef  TYPE_2__ filter_sys_t ;
struct TYPE_21__ {scalar_t__ i_chroma; scalar_t__ i_bmask; scalar_t__ i_gmask; scalar_t__ i_rmask; } ;
struct TYPE_20__ {scalar_t__ i_codec; TYPE_4__ video; } ;
typedef  TYPE_3__ es_format_t ;
struct TYPE_24__ {int /*<<< orphan*/ * pf_video_mouse; } ;

/* Variables and functions */
 int /*<<< orphan*/  ChainMouse ; 
 int /*<<< orphan*/  RestartFilterCallback ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_9__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 TYPE_9__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_7__*,TYPE_8__*) ; 
 scalar_t__* FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 

__attribute__((used)) static int FUNC9( filter_t *p_filter )
{
    es_format_t fmt_mid;
    int i_ret = VLC_EGENERIC;

    filter_sys_t *p_sys = p_filter->p_sys;

    /* Now try chroma format list */
    const vlc_fourcc_t *pi_allowed_chromas = FUNC6( p_filter );
    for( int i = 0; pi_allowed_chromas[i]; i++ )
    {
        FUNC5( p_sys->p_chain, &p_filter->fmt_in, &p_filter->fmt_out );

        const vlc_fourcc_t i_chroma = pi_allowed_chromas[i];
        if( i_chroma == p_filter->fmt_in.i_codec ||
            i_chroma == p_filter->fmt_out.i_codec )
            continue;

        FUNC7( p_filter, "Trying to use chroma %4.4s as middle man",
                 (char*)&i_chroma );

        FUNC1( &fmt_mid, &p_filter->fmt_in );
        fmt_mid.i_codec        =
        fmt_mid.video.i_chroma = i_chroma;
        fmt_mid.video.i_rmask  = 0;
        fmt_mid.video.i_gmask  = 0;
        fmt_mid.video.i_bmask  = 0;
        FUNC8(&fmt_mid.video);

        if( FUNC3( p_sys->p_chain,
                                          &fmt_mid ) == VLC_SUCCESS )
        {
            p_sys->p_video_filter =
                FUNC4( p_sys->p_chain,
                                           p_filter->psz_name, p_filter->p_cfg,
                                           &fmt_mid );
            if( p_sys->p_video_filter )
            {
                FUNC2( p_filter,
                                          p_sys->p_video_filter,
                                          RestartFilterCallback );
                if (p_sys->p_video_filter->pf_video_mouse != NULL)
                    p_filter->pf_video_mouse = ChainMouse;
                FUNC0( &fmt_mid );
                i_ret = VLC_SUCCESS;
                break;
            }
        }
        FUNC0( &fmt_mid );
    }
    if( i_ret != VLC_SUCCESS )
        FUNC5( p_sys->p_chain, &p_filter->fmt_in, &p_filter->fmt_out );

    return i_ret;
}