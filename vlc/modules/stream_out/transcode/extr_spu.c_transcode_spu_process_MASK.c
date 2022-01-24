#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_15__ ;
typedef  struct TYPE_18__   TYPE_11__ ;

/* Type definitions */
typedef  scalar_t__ vlc_tick_t ;
struct TYPE_22__ {int /*<<< orphan*/  i_start; scalar_t__ i_stop; struct TYPE_22__* p_next; } ;
typedef  TYPE_3__ subpicture_t ;
typedef  int /*<<< orphan*/  sout_stream_t ;
struct TYPE_23__ {scalar_t__ (* pf_get_output_dimensions ) (int /*<<< orphan*/ ,unsigned int*,unsigned int*) ;int /*<<< orphan*/  encoder; TYPE_2__* p_enccfg; int /*<<< orphan*/  callback_data; int /*<<< orphan*/  (* pf_send_subpicture ) (int /*<<< orphan*/ ,TYPE_3__*) ;scalar_t__ (* pf_get_master_drift ) (int /*<<< orphan*/ ) ;TYPE_15__* p_decoder; } ;
typedef  TYPE_4__ sout_stream_id_sys_t ;
struct TYPE_18__ {unsigned int i_sar_num; unsigned int i_visible_width; unsigned int i_width; unsigned int i_sar_den; unsigned int i_visible_height; unsigned int i_height; } ;
struct TYPE_24__ {TYPE_11__ video; } ;
typedef  TYPE_5__ es_format_t ;
typedef  int /*<<< orphan*/  block_t ;
struct TYPE_20__ {unsigned int i_width; unsigned int i_height; } ;
struct TYPE_21__ {scalar_t__ i_codec; TYPE_1__ spu; } ;
struct TYPE_19__ {int (* pf_decode ) (TYPE_15__*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  VIDEO_ES ; 
 int VLCDEC_SUCCESS ; 
 int /*<<< orphan*/  VLC_CODEC_TEXT ; 
 int VLC_EGENERIC ; 
 scalar_t__ VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_15__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,TYPE_11__*,TYPE_11__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,TYPE_3__*) ; 

int FUNC12( sout_stream_t *p_stream,
                                  sout_stream_id_sys_t *id,
                                  block_t *in, block_t **out )
{
    FUNC0(p_stream);
    *out = NULL;
    bool b_error = false;

    int ret = id->p_decoder->pf_decode( id->p_decoder, in );
    if( ret != VLCDEC_SUCCESS )
        return VLC_EGENERIC;

    subpicture_t *p_subpics = FUNC10( id );

    do
    {
        subpicture_t *p_subpic = p_subpics;
        if( p_subpic == NULL )
            break;
        p_subpics = p_subpic->p_next;
        p_subpic->p_next = NULL;

        if( b_error )
        {
            FUNC8( p_subpic );
            continue;
        }

        vlc_tick_t drift;
        if( id->pf_get_master_drift &&
            (drift = id->pf_get_master_drift( id->callback_data )) )
        {
            p_subpic->i_start -= drift;
            if( p_subpic->i_stop )
                p_subpic->i_stop -= drift;
        }

        if( id->p_enccfg->i_codec == 0 /* overlay */ )
        {
            if( !id->pf_send_subpicture )
            {
                FUNC8( p_subpic );
                b_error = true;
            }
            else id->pf_send_subpicture( id->callback_data, p_subpic );
        }
        else
        {
            block_t *p_block;

            es_format_t fmt;
            FUNC3( &fmt, VIDEO_ES, VLC_CODEC_TEXT );

            unsigned w, h;
            if( id->pf_get_output_dimensions == NULL ||
                id->pf_get_output_dimensions( id->callback_data,
                                              &w, &h ) != VLC_SUCCESS )
            {
                w = id->p_enccfg->spu.i_width;
                h = id->p_enccfg->spu.i_height;
            }

            fmt.video.i_sar_num =
            fmt.video.i_visible_width =
            fmt.video.i_width = w;

            fmt.video.i_sar_den =
            fmt.video.i_visible_height =
            fmt.video.i_height = h;

            FUNC9( p_subpic, &fmt.video, &fmt.video, p_subpic->i_start );
            FUNC2( &fmt );

            p_block = FUNC11( id->encoder, p_subpic );
            FUNC8( p_subpic );
            if( p_block )
                FUNC1( out, p_block );
            else
                b_error = true;
        }
    } while( p_subpics );

    return b_error ? VLC_EGENERIC : VLC_SUCCESS;
}