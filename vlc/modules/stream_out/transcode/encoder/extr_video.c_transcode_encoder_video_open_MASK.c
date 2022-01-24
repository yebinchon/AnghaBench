#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;

/* Type definitions */
struct TYPE_19__ {int b_abort; int b_threaded; TYPE_11__* p_encoder; int /*<<< orphan*/  picture_pool_has_room; int /*<<< orphan*/  cond; int /*<<< orphan*/  thread; int /*<<< orphan*/ * p_buffers; } ;
typedef  TYPE_6__ transcode_encoder_t ;
struct TYPE_17__ {scalar_t__ i_count; int /*<<< orphan*/  i_priority; int /*<<< orphan*/  pool_size; } ;
struct TYPE_18__ {TYPE_4__ threads; } ;
struct TYPE_20__ {TYPE_5__ video; int /*<<< orphan*/  psz_name; int /*<<< orphan*/  p_config_chain; } ;
typedef  TYPE_7__ transcode_encoder_config_t ;
struct TYPE_16__ {int /*<<< orphan*/  i_codec; } ;
struct TYPE_14__ {int /*<<< orphan*/  i_chroma; } ;
struct TYPE_15__ {int /*<<< orphan*/  i_codec; TYPE_1__ video; } ;
struct TYPE_13__ {scalar_t__ i_threads; int /*<<< orphan*/ * p_module; TYPE_3__ fmt_out; TYPE_2__ fmt_in; int /*<<< orphan*/  p_cfg; } ;

/* Variables and functions */
 int /*<<< orphan*/  EncoderThread ; 
 int /*<<< orphan*/  VIDEO_ES ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_11__*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_11__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC8( transcode_encoder_t *p_enc,
                                   const transcode_encoder_config_t *p_cfg )
{
    p_enc->p_encoder->i_threads = p_cfg->video.threads.i_count;
    p_enc->p_encoder->p_cfg = p_cfg->p_config_chain;

    p_enc->p_encoder->p_module =
        FUNC0( p_enc->p_encoder, "encoder", p_cfg->psz_name, true );
    if( !p_enc->p_encoder->p_module )
        return VLC_EGENERIC;

    p_enc->p_encoder->fmt_in.video.i_chroma = p_enc->p_encoder->fmt_in.i_codec;

    /*  */
    p_enc->p_encoder->fmt_out.i_codec =
        FUNC5( VIDEO_ES, p_enc->p_encoder->fmt_out.i_codec );

    FUNC7( &p_enc->picture_pool_has_room, p_cfg->video.threads.pool_size );
    FUNC4( &p_enc->cond );
    p_enc->p_buffers = NULL;
    p_enc->b_abort = false;

    if( p_cfg->video.threads.i_count > 0 )
    {
        if( FUNC2( &p_enc->thread, EncoderThread, p_enc, p_cfg->video.threads.i_priority ) )
        {
            FUNC3( &p_enc->cond );
            FUNC6( &p_enc->picture_pool_has_room );
            FUNC1( p_enc->p_encoder, p_enc->p_encoder->p_module );
            p_enc->p_encoder->p_module = NULL;
            return VLC_EGENERIC;
        }
        p_enc->b_threaded = true;
    }

    return VLC_SUCCESS;
}