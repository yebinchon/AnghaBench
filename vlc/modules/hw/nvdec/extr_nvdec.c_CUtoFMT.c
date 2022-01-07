
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ vlc_fourcc_t ;
struct TYPE_9__ {scalar_t__ i_chroma; unsigned int i_bits_per_pixel; int i_frame_rate_base; int i_frame_rate; scalar_t__ i_visible_height; scalar_t__ i_visible_width; scalar_t__ i_y_offset; scalar_t__ i_x_offset; int i_height; } ;
typedef TYPE_3__ video_format_t ;
struct TYPE_8__ {int denominator; int numerator; } ;
struct TYPE_7__ {scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; } ;
struct TYPE_10__ {int bit_depth_luma_minus8; TYPE_2__ frame_rate; TYPE_1__ display_area; int coded_height; int chroma_format; } ;
typedef TYPE_4__ CUVIDEOFORMAT ;


 scalar_t__ MapSurfaceChroma (int ,unsigned int) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 scalar_t__ is_nvdec_opaque (scalar_t__) ;

__attribute__((used)) static int CUtoFMT(video_format_t *fmt, const CUVIDEOFORMAT *p_format)
{

    unsigned int i_bpp = p_format->bit_depth_luma_minus8 + 8;
    vlc_fourcc_t i_chroma;
    if (is_nvdec_opaque(fmt->i_chroma))
        i_chroma = fmt->i_chroma;
    else
        i_chroma = MapSurfaceChroma(p_format->chroma_format, i_bpp);
    if (i_chroma == 0)
        return VLC_EGENERIC;

    fmt->i_chroma = i_chroma;

    fmt->i_height = p_format->coded_height;
    fmt->i_x_offset = p_format->display_area.left;
    fmt->i_y_offset = p_format->display_area.top;
    fmt->i_visible_width = p_format->display_area.right - p_format->display_area.left;
    fmt->i_visible_height = p_format->display_area.bottom - p_format->display_area.top;

    fmt->i_frame_rate = p_format->frame_rate.numerator;
    fmt->i_frame_rate_base = p_format->frame_rate.denominator;
    fmt->i_bits_per_pixel = i_bpp;
    return VLC_SUCCESS;
}
