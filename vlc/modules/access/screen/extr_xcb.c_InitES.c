
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int xcb_setup_t ;
struct TYPE_12__ {int depth; int bits_per_pixel; } ;
typedef TYPE_2__ xcb_format_t ;
typedef int uint_fast8_t ;
typedef void* uint_fast16_t ;
typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int es_out_id_t ;
struct TYPE_11__ {int i_bits_per_pixel; int i_sar_num; int i_sar_den; int i_frame_rate; int i_frame_rate_base; void* i_height; void* i_visible_height; void* i_width; void* i_visible_width; scalar_t__ i_chroma; } ;
struct TYPE_13__ {TYPE_1__ video; } ;
typedef TYPE_3__ es_format_t ;
struct TYPE_14__ {int out; TYPE_5__* p_sys; } ;
typedef TYPE_4__ demux_t ;
struct TYPE_15__ {int rate; int conn; } ;
typedef TYPE_5__ demux_sys_t ;


 int VIDEO_ES ;
 scalar_t__ VLC_CODEC_ARGB ;
 scalar_t__ VLC_CODEC_RGB15 ;
 scalar_t__ VLC_CODEC_RGB16 ;
 scalar_t__ VLC_CODEC_RGB24 ;
 scalar_t__ VLC_CODEC_RGB32 ;
 scalar_t__ VLC_CODEC_RGB8 ;
 int es_format_Init (TYPE_3__*,int ,scalar_t__) ;
 int * es_out_Add (int ,TYPE_3__*) ;
 int msg_Err (TYPE_4__*,char*) ;
 int * xcb_get_setup (int ) ;
 TYPE_2__* xcb_setup_pixmap_formats (int const*) ;
 int xcb_setup_pixmap_formats_length (int const*) ;

__attribute__((used)) static es_out_id_t *InitES (demux_t *demux, uint_fast16_t width,
                            uint_fast16_t height, uint_fast8_t depth,
                            uint8_t *bpp)
{
    demux_sys_t *p_sys = demux->p_sys;
    const xcb_setup_t *setup = xcb_get_setup (p_sys->conn);
    uint32_t chroma = 0;

    for (const xcb_format_t *fmt = xcb_setup_pixmap_formats (setup),
             *end = fmt + xcb_setup_pixmap_formats_length (setup);
         fmt < end; fmt++)
    {
        if (fmt->depth != depth)
            continue;
        switch (fmt->depth)
        {
            case 32:
                if (fmt->bits_per_pixel == 32)
                    chroma = VLC_CODEC_ARGB;
                break;
            case 24:
                if (fmt->bits_per_pixel == 32)
                    chroma = VLC_CODEC_RGB32;
                else if (fmt->bits_per_pixel == 24)
                    chroma = VLC_CODEC_RGB24;
                break;
            case 16:
                if (fmt->bits_per_pixel == 16)
                    chroma = VLC_CODEC_RGB16;
                break;
            case 15:
                if (fmt->bits_per_pixel == 16)
                    chroma = VLC_CODEC_RGB15;
                break;
            case 8:
                if (fmt->bits_per_pixel == 8)
                    chroma = VLC_CODEC_RGB8;
                break;
        }
        if (chroma != 0)
        {
            *bpp = fmt->bits_per_pixel;
            break;
        }
    }

    if (!chroma)
    {
        msg_Err (demux, "unsupported pixmap formats");
        return ((void*)0);
    }

    es_format_t fmt;

    es_format_Init (&fmt, VIDEO_ES, chroma);
    fmt.video.i_chroma = chroma;
    fmt.video.i_bits_per_pixel = *bpp;
    fmt.video.i_sar_num = fmt.video.i_sar_den = 1;
    fmt.video.i_frame_rate = 1000 * p_sys->rate;
    fmt.video.i_frame_rate_base = 1000;
    fmt.video.i_visible_width = fmt.video.i_width = width;
    fmt.video.i_visible_height = fmt.video.i_height = height;

    return es_out_Add (demux->out, &fmt);
}
