#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sout_stream_t ;
struct TYPE_16__ {int /*<<< orphan*/ * p_conv_static; int /*<<< orphan*/ * p_conv_nonstatic; } ;
typedef  TYPE_1__ sout_stream_id_sys_t ;
struct TYPE_17__ {TYPE_1__* sys; int /*<<< orphan*/ * video; } ;
typedef  TYPE_2__ filter_owner_t ;
typedef  int /*<<< orphan*/  filter_chain_t ;
struct TYPE_19__ {scalar_t__ i_width; scalar_t__ i_height; scalar_t__ i_chroma; scalar_t__ orientation; } ;
struct TYPE_18__ {TYPE_4__ video; } ;
typedef  TYPE_3__ es_format_t ;

/* Variables and functions */
 scalar_t__ ORIENT_NORMAL ; 
 int /*<<< orphan*/  VIDEO_ES ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_3__ const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_3__ const*) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_3__ const*,TYPE_3__ const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int const,int const,int const) ; 
 int /*<<< orphan*/  transcode_filter_video_cbs ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,TYPE_4__*) ; 

__attribute__((used)) static int FUNC8( sout_stream_t *p_stream,
                                            sout_stream_id_sys_t *id,
                                            const es_format_t **pp_src,
                                            const es_format_t *p_dst,
                                            bool b_reorient )
{
    filter_owner_t owner = {
        .video = &transcode_filter_video_cbs,
        .sys = id,
    };

    enum
    {
        STEP_NONSTATIC = 0,
        STEP_STATIC,
    };
    for( int step = STEP_NONSTATIC; step <= STEP_STATIC; step++ )
    {
        const bool b_do_scale = (*pp_src)->video.i_width != p_dst->video.i_width ||
                                (*pp_src)->video.i_height != p_dst->video.i_height;
        const bool b_do_chroma = (*pp_src)->video.i_chroma != p_dst->video.i_chroma;
        const bool b_do_orient = ((*pp_src)->video.orientation != ORIENT_NORMAL) && b_reorient;

        if( step == STEP_STATIC && b_do_orient )
            return VLC_EGENERIC;

        const es_format_t *p_tmpdst = p_dst;

        if( ! (b_do_scale || b_do_chroma || b_do_orient) )
            return VLC_SUCCESS;

        es_format_t tmpdst;
        if( b_do_orient )
        {
            FUNC1( &tmpdst, VIDEO_ES, p_dst->video.i_chroma );
            FUNC7( &tmpdst.video, &p_dst->video );
            p_tmpdst = &tmpdst;
        }

        FUNC6( p_stream, "adding (scale %d,chroma %d, orient %d) converters",
                 b_do_scale, b_do_chroma, b_do_orient );

        filter_chain_t **pp_chain = (step == STEP_NONSTATIC)
                ? &id->p_conv_nonstatic
                : &id->p_conv_static;

        *pp_chain = FUNC4( p_stream, step == STEP_NONSTATIC, &owner );
        if( !*pp_chain )
            return VLC_EGENERIC;
        FUNC5( *pp_chain, *pp_src, p_tmpdst );

        if( FUNC2( *pp_chain, p_tmpdst ) != VLC_SUCCESS )
            return VLC_EGENERIC;

        *pp_src = FUNC3( *pp_chain );
        FUNC0( p_stream, *pp_src );
    }

    return VLC_SUCCESS;
}