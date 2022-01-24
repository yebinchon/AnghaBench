#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vout_thread_t ;
struct TYPE_14__ {TYPE_1__* fmt; int /*<<< orphan*/ * vout; } ;
typedef  TYPE_5__ vout_device_configuration_t ;
typedef  int /*<<< orphan*/  vlc_decoder_device ;
struct TYPE_11__ {scalar_t__ i_width; scalar_t__ i_height; scalar_t__ i_visible_width; scalar_t__ i_visible_height; scalar_t__ i_x_offset; scalar_t__ i_y_offset; scalar_t__ i_chroma; int i_sar_den; int i_sar_num; scalar_t__ orientation; scalar_t__ multiview_mode; } ;
struct TYPE_12__ {TYPE_2__ video; } ;
struct TYPE_10__ {scalar_t__ i_width; scalar_t__ i_height; scalar_t__ i_visible_width; scalar_t__ i_visible_height; scalar_t__ i_x_offset; scalar_t__ i_y_offset; scalar_t__ orientation; scalar_t__ multiview_mode; scalar_t__ i_sar_den; scalar_t__ i_sar_num; } ;
struct TYPE_13__ {scalar_t__ i_codec; TYPE_1__ video; } ;
struct TYPE_15__ {TYPE_4__ fmt_out; } ;
struct decoder_owner {int vout_order; int reset_out_state; int /*<<< orphan*/  p_fifo; int /*<<< orphan*/ * out_pool; int /*<<< orphan*/  lock; TYPE_3__ fmt; int /*<<< orphan*/ * p_vout; int /*<<< orphan*/  p_resource; TYPE_6__ dec; } ;
typedef  int int64_t ;
typedef  enum vlc_vout_order { ____Placeholder_vlc_vout_order } vlc_vout_order ;
typedef  TYPE_6__ decoder_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct decoder_owner*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,TYPE_5__*,int*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct decoder_owner *p_owner,
                              vout_thread_t **pp_vout, enum vlc_vout_order *order,
                              vlc_decoder_device **pp_dec_dev)
{
    decoder_t *p_dec = &p_owner->dec;
    bool need_vout = false;

    if( p_owner->p_vout == NULL )
    {
        FUNC2(p_dec, "vout: none found");
        need_vout = true;
    }
    if( p_dec->fmt_out.video.i_width != p_owner->fmt.video.i_width
             || p_dec->fmt_out.video.i_height != p_owner->fmt.video.i_height )
    {
        FUNC2(p_dec, "vout change: decoder size");
        need_vout = true;
    }
    if( p_dec->fmt_out.video.i_visible_width != p_owner->fmt.video.i_visible_width
             || p_dec->fmt_out.video.i_visible_height != p_owner->fmt.video.i_visible_height
             || p_dec->fmt_out.video.i_x_offset != p_owner->fmt.video.i_x_offset
             || p_dec->fmt_out.video.i_y_offset != p_owner->fmt.video.i_y_offset )
    {
        FUNC2(p_dec, "vout change: visible size");
        need_vout = true;
    }
    if( p_dec->fmt_out.i_codec != p_owner->fmt.video.i_chroma )
    {
        FUNC2(p_dec, "vout change: chroma");
        need_vout = true;
    }
    if( (int64_t)p_dec->fmt_out.video.i_sar_num * p_owner->fmt.video.i_sar_den !=
             (int64_t)p_dec->fmt_out.video.i_sar_den * p_owner->fmt.video.i_sar_num )
    {
        FUNC2(p_dec, "vout change: SAR");
        need_vout = true;
    }
    if( p_dec->fmt_out.video.orientation != p_owner->fmt.video.orientation )
    {
        FUNC2(p_dec, "vout change: orientation");
        need_vout = true;
    }
    if( p_dec->fmt_out.video.multiview_mode != p_owner->fmt.video.multiview_mode )
    {
        FUNC2(p_dec, "vout change: multiview");
        need_vout = true;
    }

    if( !need_vout )
    {
        if (pp_vout)
        {
            FUNC8( &p_owner->lock );
            *pp_vout = p_owner->p_vout;
            *order = p_owner->vout_order;
            FUNC9( &p_owner->lock );
        }
        return 0; // vout unchanged
    }

    if( !p_dec->fmt_out.video.i_width ||
        !p_dec->fmt_out.video.i_height ||
        p_dec->fmt_out.video.i_width < p_dec->fmt_out.video.i_visible_width ||
        p_dec->fmt_out.video.i_height < p_dec->fmt_out.video.i_visible_height )
    {
        /* Can't create a new vout without display size */
        return -1;
    }

    FUNC8( &p_owner->lock );

    vout_thread_t *p_vout = p_owner->p_vout;
    p_owner->p_vout = NULL; // the DecoderThread should not use the old vout anymore
    FUNC9( &p_owner->lock );

    if ( pp_dec_dev ) *pp_dec_dev = NULL;
    vout_device_configuration_t cfg = {
        .vout = p_vout, .fmt = &p_dec->fmt_out.video,
    };
    p_vout = FUNC1( p_owner->p_resource,
                                    &cfg, order, pp_dec_dev );

    if (pp_vout)
        *pp_vout = p_vout;

    FUNC8( &p_owner->lock );
    p_owner->p_vout = p_vout;
    p_owner->vout_order = *order;
    if ( pp_dec_dev )
    {
        if( p_vout == NULL && *pp_dec_dev != NULL )
        {
            FUNC5( *pp_dec_dev );
            *pp_dec_dev = NULL;
        }
    }

    FUNC0( p_owner );
    p_owner->fmt.video.i_chroma = p_dec->fmt_out.i_codec;
    FUNC9( &p_owner->lock );

     if ( p_owner->out_pool != NULL )
     {
         FUNC4( p_owner->out_pool );
         p_owner->out_pool = NULL;
     }

    if( p_vout == NULL )
    {
        FUNC3( p_dec, "failed to create video output" );
        return -1;
    }

    FUNC6( p_owner->p_fifo );
    p_owner->reset_out_state = true;
    FUNC7( p_owner->p_fifo );

    return 1; // new vout was created
}