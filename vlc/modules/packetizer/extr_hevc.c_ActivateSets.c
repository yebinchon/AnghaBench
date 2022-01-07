
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef void* uint8_t ;
typedef int hevc_video_parameter_set_t ;
typedef int hevc_sequence_parameter_set_t ;
typedef int hevc_picture_parameter_set_t ;
struct TYPE_11__ {unsigned int i_frame_rate; unsigned int i_frame_rate_base; unsigned int i_width; unsigned int i_height; unsigned int i_visible_width; unsigned int i_visible_height; int color_range; int space; int transfer; int primaries; } ;
struct TYPE_13__ {int i_extra; int p_extra; void* i_level; void* i_profile; TYPE_2__ video; } ;
struct TYPE_10__ {scalar_t__ primaries; scalar_t__ i_visible_width; } ;
struct TYPE_12__ {int i_profile; TYPE_1__ video; } ;
struct TYPE_14__ {TYPE_4__ fmt_out; TYPE_3__ fmt_in; TYPE_6__* p_sys; } ;
typedef TYPE_5__ decoder_t ;
struct TYPE_16__ {unsigned int i_divider_den; int i_divider_num; } ;
struct TYPE_15__ {TYPE_7__ dts; int const* p_active_vps; int const* p_active_sps; int const* p_active_pps; } ;
typedef TYPE_6__ decoder_sys_t ;


 scalar_t__ COLOR_PRIMARIES_UNDEF ;
 int SetsToAnnexB (TYPE_6__*,int const*,int const*,int const*,void***,int *) ;
 int UINT_MAX ;
 int date_Change (TYPE_7__*,int,unsigned int) ;
 int hevc_get_colorimetry (int const*,int *,int *,int *,int *) ;
 scalar_t__ hevc_get_frame_rate (int const*,int const*,unsigned int*,unsigned int*) ;
 scalar_t__ hevc_get_picture_size (int const*,unsigned int*,unsigned int*,unsigned int*,unsigned int*) ;
 scalar_t__ hevc_get_sps_profile_tier_level (int const*,void**,void**) ;

__attribute__((used)) static void ActivateSets(decoder_t *p_dec,
                         const hevc_picture_parameter_set_t *p_pps,
                         const hevc_sequence_parameter_set_t *p_sps,
                         const hevc_video_parameter_set_t *p_vps)
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    p_sys->p_active_pps = p_pps;
    p_sys->p_active_sps = p_sps;
    p_sys->p_active_vps = p_vps;
    if(p_sps)
    {
        if(!p_dec->fmt_out.video.i_frame_rate || !p_dec->fmt_out.video.i_frame_rate_base)
        {
            unsigned num, den;
            if(hevc_get_frame_rate( p_sps, p_vps, &num, &den ))
            {
                p_dec->fmt_out.video.i_frame_rate = num;
                p_dec->fmt_out.video.i_frame_rate_base = den;
                if(p_sys->dts.i_divider_den != den &&
                   p_sys->dts.i_divider_num != 2 * num &&
                   num <= UINT_MAX / 2)
                    date_Change(&p_sys->dts, 2 * num, den);
            }
            p_dec->fmt_out.video.i_frame_rate = p_sys->dts.i_divider_num >> 1;
            p_dec->fmt_out.video.i_frame_rate_base = p_sys->dts.i_divider_den;
        }

        if(p_dec->fmt_in.video.primaries == COLOR_PRIMARIES_UNDEF)
        {
            (void) hevc_get_colorimetry( p_sps,
                                         &p_dec->fmt_out.video.primaries,
                                         &p_dec->fmt_out.video.transfer,
                                         &p_dec->fmt_out.video.space,
                                         &p_dec->fmt_out.video.color_range);
        }

        unsigned sizes[4];
        if( hevc_get_picture_size( p_sps, &sizes[0], &sizes[1],
                                          &sizes[2], &sizes[3] ) )
        {
            p_dec->fmt_out.video.i_width = sizes[0];
            p_dec->fmt_out.video.i_height = sizes[1];
            if(p_dec->fmt_in.video.i_visible_width == 0)
            {
                p_dec->fmt_out.video.i_visible_width = sizes[2];
                p_dec->fmt_out.video.i_visible_height = sizes[3];
            }
        }

        if(p_dec->fmt_in.i_profile == -1)
        {
            uint8_t i_profile, i_level;
            if( hevc_get_sps_profile_tier_level( p_sps, &i_profile, &i_level ) )
            {
                p_dec->fmt_out.i_profile = i_profile;
                p_dec->fmt_out.i_level = i_level;
            }
        }

        if(p_dec->fmt_out.i_extra == 0 && p_vps && p_pps)
            SetsToAnnexB(p_sys, p_pps, p_sps, p_vps,
                         (uint8_t **)&p_dec->fmt_out.p_extra, &p_dec->fmt_out.i_extra);
    }
}
