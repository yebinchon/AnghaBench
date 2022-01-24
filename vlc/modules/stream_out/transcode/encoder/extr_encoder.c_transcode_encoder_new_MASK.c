#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_13__ {int /*<<< orphan*/  lock_out; TYPE_3__* p_encoder; int /*<<< orphan*/  pp_pics; } ;
typedef  TYPE_1__ transcode_encoder_t ;
struct TYPE_14__ {int /*<<< orphan*/  i_cat; int /*<<< orphan*/  i_group; int /*<<< orphan*/  i_id; } ;
typedef  TYPE_2__ es_format_t ;
struct TYPE_16__ {scalar_t__ psz_language; int /*<<< orphan*/  i_group; int /*<<< orphan*/  i_id; } ;
struct TYPE_15__ {TYPE_8__ fmt_out; TYPE_8__ fmt_in; int /*<<< orphan*/ * p_module; } ;

/* Variables and functions */
#define  AUDIO_ES 130 
#define  SPU_ES 129 
#define  VIDEO_ES 128 
 TYPE_1__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_8__*,TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 

transcode_encoder_t * FUNC10( vlc_object_t *p_obj,
                                             const es_format_t *p_fmt )
{
    switch( p_fmt->i_cat )
    {
        case VIDEO_ES:
        case AUDIO_ES:
        case SPU_ES:
            break;
        default:
            return NULL;
    }

    transcode_encoder_t *p_enc = FUNC0( 1, sizeof(*p_enc) );
    if( !p_enc )
        return NULL;

    p_enc->p_encoder = FUNC6( p_obj );
    if( !p_enc->p_encoder )
    {
        FUNC4( p_enc );
        return NULL;
    }
    p_enc->p_encoder->p_module = NULL;

    /* Create destination format */
    FUNC3( &p_enc->p_encoder->fmt_in, p_fmt->i_cat, 0 );
    FUNC2( &p_enc->p_encoder->fmt_in, p_fmt );
    FUNC3( &p_enc->p_encoder->fmt_out, p_fmt->i_cat, 0 );
    p_enc->p_encoder->fmt_out.i_id    = p_fmt->i_id;
    p_enc->p_encoder->fmt_out.i_group = p_fmt->i_group;
    if( p_enc->p_encoder->fmt_in.psz_language )
        p_enc->p_encoder->fmt_out.psz_language = FUNC7( p_enc->p_encoder->fmt_in.psz_language );

    switch( p_fmt->i_cat )
    {
        case VIDEO_ES:
            p_enc->pp_pics = FUNC5();
            if( !p_enc->pp_pics )
            {
                FUNC1( &p_enc->p_encoder->fmt_in );
                FUNC1( &p_enc->p_encoder->fmt_out );
                FUNC9(p_enc->p_encoder);
                FUNC4( p_enc );
                return NULL;
            }
            FUNC8( &p_enc->lock_out );
            break;
        default:
            break;
    }

    return p_enc;
}