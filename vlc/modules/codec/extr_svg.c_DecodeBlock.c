
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_8__ ;
typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_21__ {scalar_t__ date; TYPE_1__* p; } ;
typedef TYPE_3__ picture_t ;
typedef double int32_t ;
struct TYPE_26__ {double i_width; double i_height; double i_visible_width; double i_visible_height; int i_sar_num; int i_sar_den; int i_rmask; int i_gmask; int i_bmask; int i_chroma; } ;
struct TYPE_20__ {TYPE_8__ video; int i_codec; } ;
struct TYPE_22__ {TYPE_2__ fmt_out; scalar_t__ p_sys; } ;
typedef TYPE_4__ decoder_t ;
struct TYPE_23__ {double f_scale; double i_width; double i_height; } ;
typedef TYPE_5__ decoder_sys_t ;
typedef int cairo_t ;
typedef int cairo_surface_t ;
struct TYPE_24__ {int i_flags; scalar_t__ i_pts; scalar_t__ i_dts; int i_buffer; int p_buffer; } ;
typedef TYPE_6__ block_t ;
struct TYPE_25__ {int width; int height; } ;
struct TYPE_19__ {int i_pitch; int i_lines; int p_pixels; } ;
typedef int RsvgHandle ;
typedef TYPE_7__ RsvgDimensionData ;


 int BLOCK_FLAG_CORRUPTED ;
 int CAIRO_FORMAT_ARGB32 ;
 int G_OBJECT (int *) ;
 int VLCDEC_SUCCESS ;
 int VLC_CODEC_BGRA ;
 scalar_t__ VLC_TICK_INVALID ;
 int block_Release (TYPE_6__*) ;
 int * cairo_create (int *) ;
 int cairo_destroy (int *) ;
 int * cairo_image_surface_create_for_data (int ,int ,double,double,int) ;
 int cairo_scale (int *,double,double) ;
 int cairo_surface_destroy (int *) ;
 TYPE_3__* decoder_NewPicture (TYPE_4__*) ;
 int decoder_QueueVideo (TYPE_4__*,TYPE_3__*) ;
 scalar_t__ decoder_UpdateVideoFormat (TYPE_4__*) ;
 int g_object_unref (int ) ;
 int memset (int ,int ,int) ;
 int picture_Release (TYPE_3__*) ;
 int rsvg_handle_get_dimensions (int *,TYPE_7__*) ;
 int * rsvg_handle_new_from_data (int ,int ,int *) ;
 int rsvg_handle_render_cairo (int *,int *) ;
 int video_format_FixRgb (TYPE_8__*) ;

__attribute__((used)) static int DecodeBlock( decoder_t *p_dec, block_t *p_block )
{
    decoder_sys_t *p_sys = (decoder_sys_t *) p_dec->p_sys;
    picture_t *p_pic = ((void*)0);
    int32_t i_width, i_height;

    RsvgHandle *rsvg = ((void*)0);
    cairo_surface_t *surface = ((void*)0);
    cairo_t *cr = ((void*)0);

    if( p_block == ((void*)0) )
        return VLCDEC_SUCCESS;

    if( p_block->i_flags & BLOCK_FLAG_CORRUPTED)
    {
        block_Release( p_block );
        return VLCDEC_SUCCESS;
    }

    rsvg = rsvg_handle_new_from_data( p_block->p_buffer, p_block->i_buffer, ((void*)0) );
    if( !rsvg )
        goto done;

    RsvgDimensionData dim;
    rsvg_handle_get_dimensions( rsvg, &dim );

    if( p_sys->f_scale > 0.0 )
    {
        i_width = (int32_t)(p_sys->f_scale * dim.width);
        i_height = (int32_t)(p_sys->f_scale * dim.height);
    }
    else
    {

        if( p_sys->i_width < 0 && p_sys->i_height > 0 )
        {
            i_width = dim.width * p_sys->i_height / dim.height;
            i_height = p_sys->i_height;
        }
        else if( p_sys->i_width > 0 && p_sys->i_height < 0 )
        {
            i_width = p_sys->i_width;
            i_height = dim.height * p_sys->i_width / dim.height;
        }
        else if( p_sys->i_width > 0 && p_sys->i_height > 0 )
        {
            i_width = dim.width * p_sys->i_height / dim.height;
            i_height = p_sys->i_height;
        }
        else
        {
            i_width = dim.width;
            i_height = dim.height;
        }
    }

    p_dec->fmt_out.i_codec =
    p_dec->fmt_out.video.i_chroma = VLC_CODEC_BGRA;
    p_dec->fmt_out.video.i_width = i_width;
    p_dec->fmt_out.video.i_height = i_height;
    p_dec->fmt_out.video.i_visible_width = i_width;
    p_dec->fmt_out.video.i_visible_height = i_height;
    p_dec->fmt_out.video.i_sar_num = 1;
    p_dec->fmt_out.video.i_sar_den = 1;
    p_dec->fmt_out.video.i_rmask = 0x80800000;
    p_dec->fmt_out.video.i_gmask = 0x0000ff00;
    p_dec->fmt_out.video.i_bmask = 0x000000ff;
    video_format_FixRgb(&p_dec->fmt_out.video);


    if( decoder_UpdateVideoFormat( p_dec ) )
        goto done;
    p_pic = decoder_NewPicture( p_dec );
    if( !p_pic )
        goto done;





    memset(p_pic->p[0].p_pixels, 0, p_pic->p[0].i_pitch * p_pic->p[0].i_lines);
    surface = cairo_image_surface_create_for_data( p_pic->p->p_pixels,
                                                   CAIRO_FORMAT_ARGB32,
                                                   i_width, i_height,
                                                   p_pic->p[0].i_pitch );
    if( !surface )
    {
        picture_Release( p_pic );
        p_pic = ((void*)0);
        goto done;
    }


    cr = cairo_create( surface );
    if( !cr )
    {
        picture_Release( p_pic );
        p_pic = ((void*)0);
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
        cairo_scale(cr, sw, sh);
    }

    if( !rsvg_handle_render_cairo( rsvg, cr ) )
    {
        picture_Release( p_pic );
        p_pic = ((void*)0);
        goto done;
    }

    p_pic->date = p_block->i_pts != VLC_TICK_INVALID ? p_block->i_pts : p_block->i_dts;

done:
    if( rsvg )
        g_object_unref( G_OBJECT( rsvg ) );
    if( cr )
        cairo_destroy( cr );
    if( surface )
        cairo_surface_destroy( surface );

    block_Release( p_block );
    if( p_pic != ((void*)0) )
        decoder_QueueVideo( p_dec, p_pic );
    return VLCDEC_SUCCESS;
}
