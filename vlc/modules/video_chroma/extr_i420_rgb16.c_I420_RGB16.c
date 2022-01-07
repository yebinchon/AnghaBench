
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_17__ {TYPE_1__* p; int * V_PIXELS; int * U_PIXELS; int * Y_PIXELS; } ;
typedef TYPE_6__ picture_t ;
struct TYPE_15__ {int i_x_offset; int i_visible_width; int i_y_offset; int i_visible_height; } ;
struct TYPE_16__ {TYPE_4__ video; } ;
struct TYPE_13__ {int i_y_offset; int i_visible_height; scalar_t__ i_visible_width; scalar_t__ i_x_offset; } ;
struct TYPE_14__ {TYPE_2__ video; } ;
struct TYPE_18__ {TYPE_5__ fmt_in; TYPE_3__ fmt_out; TYPE_8__* p_sys; } ;
typedef TYPE_7__ filter_t ;
struct TYPE_19__ {int* p_offset; scalar_t__ p_buffer; int i_bytespp; int i_buffer_size; int * p_rgb16; } ;
typedef TYPE_8__ filter_sys_t ;
struct TYPE_12__ {int i_pitch; int i_visible_pitch; scalar_t__ p_pixels; } ;


 scalar_t__ AllocateOrGrow (scalar_t__*,int *,int,int ) ;
 int CONVERT_YUV_PIXEL (int) ;
 int CONVERT_Y_PIXEL (int) ;
 int SCALE_HEIGHT (int,int) ;
 int SCALE_WIDTH ;
 int SetOffset (int,int,scalar_t__,int,int*,unsigned int*,int*) ;

void I420_RGB16( filter_t *p_filter, picture_t *p_src, picture_t *p_dest )
{
    filter_sys_t *p_sys = p_filter->p_sys;


    uint16_t *p_pic = (uint16_t*)p_dest->p->p_pixels;
    uint8_t *p_y = p_src->Y_PIXELS;
    uint8_t *p_u = p_src->U_PIXELS;
    uint8_t *p_v = p_src->V_PIXELS;

    bool b_hscale;
    unsigned int i_vscale;
    unsigned int i_x, i_y;

    int i_right_margin;
    int i_rewind;
    int i_scale_count;
    int i_chroma_width = (p_filter->fmt_in.video.i_x_offset + p_filter->fmt_in.video.i_visible_width) / 2;
    uint16_t * p_pic_start;
    int i_uval, i_vval;
    int i_red, i_green, i_blue;
    uint16_t * p_yuv = p_sys->p_rgb16;
    uint16_t * p_ybase;


    uint16_t * p_buffer_start;
    uint16_t * p_buffer;


    int * p_offset_start = p_sys->p_offset;
    int * p_offset;

    const int i_source_margin = p_src->p[0].i_pitch
                                 - p_src->p[0].i_visible_pitch
                                 - p_filter->fmt_in.video.i_x_offset;
    const int i_source_margin_c = p_src->p[1].i_pitch
                                 - p_src->p[1].i_visible_pitch
                                 - ( p_filter->fmt_in.video.i_x_offset / 2 );

    i_right_margin = p_dest->p->i_pitch - p_dest->p->i_visible_pitch;
    i_rewind = (-(p_filter->fmt_in.video.i_x_offset + p_filter->fmt_in.video.i_visible_width)) & 7;




    SetOffset( (p_filter->fmt_in.video.i_x_offset + p_filter->fmt_in.video.i_visible_width),
               (p_filter->fmt_in.video.i_y_offset + p_filter->fmt_in.video.i_visible_height),
               (p_filter->fmt_out.video.i_x_offset + p_filter->fmt_out.video.i_visible_width),
               (p_filter->fmt_out.video.i_y_offset + p_filter->fmt_out.video.i_visible_height),
               &b_hscale, &i_vscale, p_offset_start );

    if(b_hscale &&
       AllocateOrGrow(&p_sys->p_buffer, &p_sys->i_buffer_size,
                      p_filter->fmt_in.video.i_x_offset +
                      p_filter->fmt_in.video.i_visible_width,
                      p_sys->i_bytespp))
        return;
    else p_buffer_start = (uint16_t*)p_sys->p_buffer;




    i_scale_count = ( i_vscale == 1 ) ?
                    (p_filter->fmt_out.video.i_y_offset + p_filter->fmt_out.video.i_visible_height) :
                    (p_filter->fmt_in.video.i_y_offset + p_filter->fmt_in.video.i_visible_height);
    for( i_y = 0; i_y < (p_filter->fmt_in.video.i_y_offset + p_filter->fmt_in.video.i_visible_height); i_y++ )
    {
        p_pic_start = p_pic;
        p_buffer = b_hscale ? p_buffer_start : p_pic;

        for ( i_x = (p_filter->fmt_in.video.i_x_offset + p_filter->fmt_in.video.i_visible_width) / 8; i_x--; )
        {
            CONVERT_YUV_PIXEL(2); CONVERT_Y_PIXEL(2);
            CONVERT_YUV_PIXEL(2); CONVERT_Y_PIXEL(2);
            CONVERT_YUV_PIXEL(2); CONVERT_Y_PIXEL(2);
            CONVERT_YUV_PIXEL(2); CONVERT_Y_PIXEL(2);
        }



        if( i_rewind )
        {
            p_y -= i_rewind;
            p_u -= i_rewind >> 1;
            p_v -= i_rewind >> 1;
            p_buffer -= i_rewind;

            CONVERT_YUV_PIXEL(2); CONVERT_Y_PIXEL(2);
            CONVERT_YUV_PIXEL(2); CONVERT_Y_PIXEL(2);
            CONVERT_YUV_PIXEL(2); CONVERT_Y_PIXEL(2);
            CONVERT_YUV_PIXEL(2); CONVERT_Y_PIXEL(2);
        }
        SCALE_WIDTH;
        SCALE_HEIGHT( 420, 2 );

        p_y += i_source_margin;
        if( i_y % 2 )
        {
            p_u += i_source_margin_c;
            p_v += i_source_margin_c;
        }
    }
}
