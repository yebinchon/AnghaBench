
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ video_transfer_func_t ;
typedef scalar_t__ video_color_space_t ;
typedef int video_color_range_t ;
typedef scalar_t__ video_color_primaries_t ;
typedef int uint8_t ;
struct TYPE_10__ {unsigned int i_visible_width; unsigned int i_width; unsigned int i_height; unsigned int i_visible_height; unsigned int i_frame_rate; unsigned int i_frame_rate_base; scalar_t__ primaries; scalar_t__ transfer; scalar_t__ space; int color_range; } ;
struct TYPE_12__ {int i_profile; int i_level; int p_extra; int i_extra; TYPE_2__ video; } ;
struct TYPE_9__ {scalar_t__ primaries; int i_frame_rate_base; int i_frame_rate; int i_visible_width; int i_visible_height; } ;
struct TYPE_11__ {scalar_t__ i_profile; int i_extra; TYPE_1__ video; } ;
struct TYPE_14__ {TYPE_4__ fmt_out; TYPE_3__ fmt_in; TYPE_7__* p_sys; } ;
typedef TYPE_6__ decoder_t ;
struct TYPE_15__ {TYPE_5__* p_sequence_header_block; int p_sequence_header; } ;
typedef TYPE_7__ av1_sys_t ;
struct TYPE_13__ {int i_buffer; int p_buffer; } ;


 scalar_t__ AV1_PROFILE_MAIN ;
 int AV1_create_DecoderConfigurationRecord (int **,int ,int,int const**,int *) ;
 scalar_t__ AV1_get_colorimetry (int ,scalar_t__*,scalar_t__*,scalar_t__*,int *) ;
 int AV1_get_frame_max_dimensions (int ,unsigned int*,unsigned int*) ;
 scalar_t__ AV1_get_frame_rate (int ,unsigned int*,unsigned int*) ;
 int AV1_get_profile_level (int ,int*,int*,int*) ;
 scalar_t__ COLOR_PRIMARIES_UNDEF ;

__attribute__((used)) static void UpdateDecoderFormat(decoder_t *p_dec)
{
    av1_sys_t *p_sys = p_dec->p_sys;
    if(!p_sys->p_sequence_header)
        return;

    if(p_dec->fmt_in.i_profile < AV1_PROFILE_MAIN)
    {
        int val[3];
        AV1_get_profile_level(p_sys->p_sequence_header, &val[0], &val[1], &val[2]);
        if(p_dec->fmt_out.i_profile != val[0] || p_dec->fmt_out.i_level != val[1])
        {
            p_dec->fmt_out.i_profile = val[0];
            p_dec->fmt_out.i_level = val[1];
        }
    }

    unsigned wnum, hden;
    AV1_get_frame_max_dimensions(p_sys->p_sequence_header, &wnum, &hden);
    if((!p_dec->fmt_in.video.i_visible_height ||
        !p_dec->fmt_in.video.i_visible_width) &&
       (p_dec->fmt_out.video.i_visible_width != wnum ||
        p_dec->fmt_out.video.i_visible_width != hden))
    {
        p_dec->fmt_out.video.i_width =
        p_dec->fmt_out.video.i_visible_width = wnum;
        p_dec->fmt_out.video.i_height =
        p_dec->fmt_out.video.i_visible_height = hden;
    }

    if((!p_dec->fmt_in.video.i_frame_rate ||
        !p_dec->fmt_in.video.i_frame_rate_base) &&
        AV1_get_frame_rate(p_sys->p_sequence_header, &wnum, &hden) &&
        (p_dec->fmt_out.video.i_frame_rate != wnum ||
         p_dec->fmt_out.video.i_frame_rate_base != hden))
    {
        p_dec->fmt_out.video.i_frame_rate = wnum;
        p_dec->fmt_out.video.i_frame_rate_base = hden;
    }

    video_color_primaries_t prim;
    video_color_space_t space;
    video_transfer_func_t xfer;
    video_color_range_t full;
    if(p_dec->fmt_in.video.primaries == COLOR_PRIMARIES_UNDEF &&
       AV1_get_colorimetry(p_sys->p_sequence_header, &prim, &xfer, &space, &full) &&
       prim != COLOR_PRIMARIES_UNDEF &&
       (p_dec->fmt_out.video.primaries != prim ||
        p_dec->fmt_out.video.transfer != xfer ||
        p_dec->fmt_out.video.space != space))
    {
        p_dec->fmt_out.video.primaries = prim;
        p_dec->fmt_out.video.transfer = xfer;
        p_dec->fmt_out.video.space = space;
        p_dec->fmt_out.video.color_range = full;
    }

    if(!p_dec->fmt_in.i_extra && !p_dec->fmt_out.i_extra)
    {
        p_dec->fmt_out.i_extra =
                AV1_create_DecoderConfigurationRecord((uint8_t **)&p_dec->fmt_out.p_extra,
                                                      p_sys->p_sequence_header,
                                                      1,
                                                      (const uint8_t **)&p_sys->p_sequence_header_block->p_buffer,
                                                      &p_sys->p_sequence_header_block->i_buffer);
    }
}
