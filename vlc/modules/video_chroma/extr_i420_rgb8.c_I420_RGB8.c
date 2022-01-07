
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
struct TYPE_17__ {TYPE_1__* p; int * V_PIXELS; int * U_PIXELS; int * Y_PIXELS; } ;
typedef TYPE_6__ picture_t ;
struct TYPE_15__ {int i_x_offset; int i_visible_width; int i_y_offset; int i_visible_height; } ;
struct TYPE_16__ {TYPE_4__ video; } ;
struct TYPE_13__ {int i_y_offset; int i_visible_height; scalar_t__ i_visible_width; scalar_t__ i_x_offset; } ;
struct TYPE_14__ {TYPE_2__ video; } ;
struct TYPE_18__ {TYPE_5__ fmt_in; TYPE_3__ fmt_out; TYPE_8__* p_sys; } ;
typedef TYPE_7__ filter_t ;
struct TYPE_19__ {int* p_offset; int * p_base; } ;
typedef TYPE_8__ filter_sys_t ;
struct TYPE_12__ {int i_pitch; int i_visible_pitch; scalar_t__ p_pixels; } ;


 int SCALE_HEIGHT_DITHER (int) ;
 int SCALE_WIDTH_DITHER (int) ;
 int SetOffset (int,int,scalar_t__,int,int*,int*,int*) ;

void I420_RGB8( filter_t *p_filter, picture_t *p_src, picture_t *p_dest )
{
    filter_sys_t *p_sys = p_filter->p_sys;


    uint8_t *p_pic = (uint8_t*)p_dest->p->p_pixels;
    uint8_t *p_y = p_src->Y_PIXELS;
    uint8_t *p_u = p_src->U_PIXELS;
    uint8_t *p_v = p_src->V_PIXELS;

    bool b_hscale;
    int i_vscale;
    unsigned int i_x, i_y;
    unsigned int i_real_y;
    int i_right_margin;
    int i_scale_count;
    unsigned int i_chroma_width = (p_filter->fmt_in.video.i_x_offset + p_filter->fmt_in.video.i_visible_width) / 2;


    uint8_t * p_lookup = p_sys->p_base;


    int * p_offset_start = p_sys->p_offset;
    int * p_offset;

    const int i_source_margin = p_src->p[0].i_pitch
                                 - p_src->p[0].i_visible_pitch
                                 - p_filter->fmt_in.video.i_x_offset;
    const int i_source_margin_c = p_src->p[1].i_pitch
                                 - p_src->p[1].i_visible_pitch
                                 - ( p_filter->fmt_in.video.i_x_offset / 2 );


    static const int dither10[4] = { 0x0, 0x8, 0x2, 0xa };
    static const int dither11[4] = { 0xc, 0x4, 0xe, 0x6 };
    static const int dither12[4] = { 0x3, 0xb, 0x1, 0x9 };
    static const int dither13[4] = { 0xf, 0x7, 0xd, 0x5 };

    static const int dither20[4] = { 0x0, 0x10, 0x4, 0x14 };
    static const int dither21[4] = { 0x18, 0x8, 0x1c, 0xc };
    static const int dither22[4] = { 0x6, 0x16, 0x2, 0x12 };
    static const int dither23[4] = { 0x1e, 0xe, 0x1a, 0xa };

    SetOffset( (p_filter->fmt_in.video.i_x_offset + p_filter->fmt_in.video.i_visible_width),
               (p_filter->fmt_in.video.i_y_offset + p_filter->fmt_in.video.i_visible_height),
               (p_filter->fmt_out.video.i_x_offset + p_filter->fmt_out.video.i_visible_width),
               (p_filter->fmt_out.video.i_y_offset + p_filter->fmt_out.video.i_visible_height),
               &b_hscale, &i_vscale, p_offset_start );

    i_right_margin = p_dest->p->i_pitch - p_dest->p->i_visible_pitch;




    i_scale_count = ( i_vscale == 1 ) ?
                    (p_filter->fmt_out.video.i_y_offset + p_filter->fmt_out.video.i_visible_height) :
                    (p_filter->fmt_in.video.i_y_offset + p_filter->fmt_in.video.i_visible_height);
    for( i_y = 0, i_real_y = 0; i_y < (p_filter->fmt_in.video.i_y_offset + p_filter->fmt_in.video.i_visible_height); i_y++ )
    {

        SCALE_WIDTH_DITHER( 420 );
        SCALE_HEIGHT_DITHER( 420 );
    }

    p_y += i_source_margin;
    if( i_y % 2 )
    {
        p_u += i_source_margin_c;
        p_v += i_source_margin_c;
    }
}
