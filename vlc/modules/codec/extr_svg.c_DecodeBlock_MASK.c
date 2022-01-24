#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_8__ ;
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {scalar_t__ date; TYPE_1__* p; } ;
typedef  TYPE_3__ picture_t ;
typedef  double int32_t ;
struct TYPE_26__ {double i_width; double i_height; double i_visible_width; double i_visible_height; int i_sar_num; int i_sar_den; int i_rmask; int i_gmask; int i_bmask; int /*<<< orphan*/  i_chroma; } ;
struct TYPE_20__ {TYPE_8__ video; int /*<<< orphan*/  i_codec; } ;
struct TYPE_22__ {TYPE_2__ fmt_out; scalar_t__ p_sys; } ;
typedef  TYPE_4__ decoder_t ;
struct TYPE_23__ {double f_scale; double i_width; double i_height; } ;
typedef  TYPE_5__ decoder_sys_t ;
typedef  int /*<<< orphan*/  cairo_t ;
typedef  int /*<<< orphan*/  cairo_surface_t ;
struct TYPE_24__ {int i_flags; scalar_t__ i_pts; scalar_t__ i_dts; int /*<<< orphan*/  i_buffer; int /*<<< orphan*/  p_buffer; } ;
typedef  TYPE_6__ block_t ;
struct TYPE_25__ {int width; int height; } ;
struct TYPE_19__ {int i_pitch; int i_lines; int /*<<< orphan*/  p_pixels; } ;
typedef  int /*<<< orphan*/  RsvgHandle ;
typedef  TYPE_7__ RsvgDimensionData ;

/* Variables and functions */
 int BLOCK_FLAG_CORRUPTED ; 
 int /*<<< orphan*/  CAIRO_FORMAT_ARGB32 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int VLCDEC_SUCCESS ; 
 int /*<<< orphan*/  VLC_CODEC_BGRA ; 
 scalar_t__ VLC_TICK_INVALID ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,double,double,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,double,double) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,TYPE_3__*) ; 
 scalar_t__ FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,TYPE_7__*) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_8__*) ; 

__attribute__((used)) static int FUNC17( decoder_t *p_dec, block_t *p_block )
{
    decoder_sys_t *p_sys  = (decoder_sys_t *) p_dec->p_sys;
    picture_t *p_pic = NULL;
    int32_t i_width, i_height;

    RsvgHandle *rsvg = NULL;
    cairo_surface_t *surface = NULL;
    cairo_t *cr = NULL;

    if( p_block == NULL ) /* No Drain */
        return VLCDEC_SUCCESS;

    if( p_block->i_flags & BLOCK_FLAG_CORRUPTED)
    {
        FUNC1( p_block );
        return VLCDEC_SUCCESS;
    }

    rsvg = FUNC14( p_block->p_buffer, p_block->i_buffer, NULL );
    if( !rsvg )
        goto done;

    RsvgDimensionData dim;
    FUNC13( rsvg, &dim );

    if( p_sys->f_scale > 0.0 )
    {
        i_width  = (int32_t)(p_sys->f_scale * dim.width);
        i_height = (int32_t)(p_sys->f_scale * dim.height);
    }
    else
    {
        /* Keep aspect */
        if( p_sys->i_width < 0 && p_sys->i_height > 0 )
        {
            i_width  = dim.width * p_sys->i_height / dim.height;
            i_height = p_sys->i_height;
        }
        else if( p_sys->i_width > 0 && p_sys->i_height < 0 )
        {
            i_width  = p_sys->i_width;
            i_height = dim.height * p_sys->i_width / dim.height;
        }
        else if( p_sys->i_width > 0 && p_sys->i_height > 0 )
        {
            i_width  = dim.width * p_sys->i_height / dim.height;
            i_height = p_sys->i_height;
        }
        else
        {
            i_width  = dim.width;
            i_height = dim.height;
        }
    }

    p_dec->fmt_out.i_codec =
    p_dec->fmt_out.video.i_chroma = VLC_CODEC_BGRA;
    p_dec->fmt_out.video.i_width  = i_width;
    p_dec->fmt_out.video.i_height = i_height;
    p_dec->fmt_out.video.i_visible_width  = i_width;
    p_dec->fmt_out.video.i_visible_height = i_height;
    p_dec->fmt_out.video.i_sar_num = 1;
    p_dec->fmt_out.video.i_sar_den = 1;
    p_dec->fmt_out.video.i_rmask = 0x80800000; /* Since librsvg v1.0 */
    p_dec->fmt_out.video.i_gmask = 0x0000ff00;
    p_dec->fmt_out.video.i_bmask = 0x000000ff;
    FUNC16(&p_dec->fmt_out.video);

    /* Get a new picture */
    if( FUNC9( p_dec ) )
        goto done;
    p_pic = FUNC7( p_dec );
    if( !p_pic )
        goto done;

    /* NOTE: Do not use the stride calculation from cairo, because it is wrong:
     * stride = cairo_format_stride_for_width(CAIRO_FORMAT_ARGB32, dim.width);
     * Use the stride from VLC its picture_t::p[0].i_pitch, which is correct.
     */
    FUNC11(p_pic->p[0].p_pixels, 0, p_pic->p[0].i_pitch * p_pic->p[0].i_lines);
    surface = FUNC4( p_pic->p->p_pixels,
                                                   CAIRO_FORMAT_ARGB32,
                                                   i_width, i_height,
                                                   p_pic->p[0].i_pitch );
    if( !surface )
    {
        FUNC12( p_pic );
        p_pic = NULL;
        goto done;
    }

    /* Decode picture */
    cr = FUNC2( surface );
    if( !cr )
    {
        FUNC12( p_pic );
        p_pic = NULL;
        goto done;
    }

    if ( i_width != dim.width || i_height != dim.height )
    {
        double sw, sh;
        if ( p_sys->f_scale > 0.0 && !(p_sys->i_width > 0 || p_sys->i_height > 0) )
            sw = sh = p_sys->f_scale;
        else
        {
            double aspect = (double) (dim.width * p_dec->fmt_out.video.i_sar_num) /
                    (dim.height * p_dec->fmt_out.video.i_sar_den);
            sw = aspect * i_width / dim.width;
            sh = aspect * i_height / dim.height;
        }
        FUNC5(cr, sw, sh);
    }

    if( !FUNC15( rsvg, cr ) )
    {
        FUNC12( p_pic );
        p_pic = NULL;
        goto done;
    }

    p_pic->date = p_block->i_pts != VLC_TICK_INVALID ? p_block->i_pts : p_block->i_dts;

done:
    if( rsvg )
        FUNC10( FUNC0( rsvg ) );
    if( cr )
        FUNC3( cr );
    if( surface )
        FUNC6( surface );

    FUNC1( p_block );
    if( p_pic != NULL )
        FUNC8( p_dec, p_pic );
    return VLCDEC_SUCCESS;
}