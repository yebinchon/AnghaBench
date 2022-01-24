#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_9__ ;
typedef  struct TYPE_26__   TYPE_8__ ;
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_12__ ;
typedef  struct TYPE_17__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_video_context ;
struct TYPE_27__ {unsigned int plane_count; TYPE_3__* p; } ;
typedef  TYPE_9__ vlc_chroma_description_t ;
struct TYPE_18__ {int i_visible_height; int i_sar_num; int i_sar_den; int i_width; int i_height; int i_visible_width; scalar_t__ i_y_offset; scalar_t__ i_x_offset; int /*<<< orphan*/  i_chroma; } ;
struct TYPE_24__ {TYPE_12__ video; int /*<<< orphan*/  i_codec; } ;
struct TYPE_22__ {int i_visible_width; int i_visible_height; scalar_t__ i_y_offset; scalar_t__ i_x_offset; } ;
struct TYPE_23__ {scalar_t__ i_cat; TYPE_4__ video; } ;
struct TYPE_17__ {TYPE_8__* cbs; TYPE_6__ fmt_out; TYPE_5__ fmt_in; } ;
typedef  TYPE_10__ decoder_t ;
struct TYPE_25__ {int (* format_update ) (TYPE_10__*,int /*<<< orphan*/ *) ;} ;
struct TYPE_26__ {TYPE_7__ video; } ;
struct TYPE_20__ {int den; } ;
struct TYPE_19__ {int den; } ;
struct TYPE_21__ {TYPE_2__ h; TYPE_1__ w; } ;

/* Variables and functions */
 scalar_t__ VIDEO_ES ; 
 int /*<<< orphan*/  FUNC0 (TYPE_10__*,char*) ; 
 int FUNC1 (TYPE_10__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (TYPE_10__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 TYPE_9__* FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int*,int*,int,int,int) ; 

int FUNC9( decoder_t *dec, vlc_video_context *vctx_out )
{
    FUNC5( dec->fmt_in.i_cat == VIDEO_ES && dec->cbs != NULL );
    if ( FUNC2(dec->fmt_in.i_cat != VIDEO_ES || dec->cbs == NULL) )
        return -1;

    /* */
    dec->fmt_out.video.i_chroma = dec->fmt_out.i_codec;

    if( dec->fmt_out.video.i_visible_height == 1088 &&
        FUNC3( dec, "hdtv-fix" ) )
    {
        dec->fmt_out.video.i_visible_height = 1080;
        if( !(dec->fmt_out.video.i_sar_num % 136))
        {
            dec->fmt_out.video.i_sar_num *= 135;
            dec->fmt_out.video.i_sar_den *= 136;
        }
        FUNC0( dec, "Fixing broken HDTV stream (display_height=1088)");
    }

    if( !dec->fmt_out.video.i_sar_num || !dec->fmt_out.video.i_sar_den )
    {
        dec->fmt_out.video.i_sar_num = 1;
        dec->fmt_out.video.i_sar_den = 1;
    }

    FUNC8( &dec->fmt_out.video.i_sar_num, &dec->fmt_out.video.i_sar_den,
                    dec->fmt_out.video.i_sar_num, dec->fmt_out.video.i_sar_den, 50000 );

    if( FUNC7( dec->fmt_out.video.i_chroma ) )
    {
        const vlc_chroma_description_t *dsc = FUNC6( dec->fmt_out.video.i_chroma );
        for( unsigned int i = 0; dsc && i < dsc->plane_count; i++ )
        {
            while( dec->fmt_out.video.i_width % dsc->p[i].w.den )
                dec->fmt_out.video.i_width++;
            while( dec->fmt_out.video.i_height % dsc->p[i].h.den )
                dec->fmt_out.video.i_height++;
        }
    }

    if( !dec->fmt_out.video.i_visible_width ||
        !dec->fmt_out.video.i_visible_height )
    {
        if( dec->fmt_in.video.i_visible_width &&
            dec->fmt_in.video.i_visible_height )
        {
            dec->fmt_out.video.i_visible_width  = dec->fmt_in.video.i_visible_width;
            dec->fmt_out.video.i_visible_height = dec->fmt_in.video.i_visible_height;
            dec->fmt_out.video.i_x_offset       = dec->fmt_in.video.i_x_offset;
            dec->fmt_out.video.i_y_offset       = dec->fmt_in.video.i_y_offset;
        }
        else
        {
            dec->fmt_out.video.i_visible_width  = dec->fmt_out.video.i_width;
            dec->fmt_out.video.i_visible_height = dec->fmt_out.video.i_height;
            dec->fmt_out.video.i_x_offset       = 0;
            dec->fmt_out.video.i_y_offset       = 0;
        }
    }

    FUNC4( &dec->fmt_out.video );

    if (dec->cbs->video.format_update == NULL)
        return 0;

    return dec->cbs->video.format_update( dec, vctx_out );
}