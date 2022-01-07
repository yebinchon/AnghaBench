
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_9__ {int i_profile; } ;
typedef TYPE_1__ es_format_t ;
struct TYPE_10__ {int* p_profiles; scalar_t__ codec; } ;
typedef TYPE_2__ directx_va_mode_t ;
struct TYPE_11__ {int profile; } ;
typedef TYPE_3__ AVCodecContext ;


 scalar_t__ AV_CODEC_ID_H264 ;
 scalar_t__ AV_CODEC_ID_HEVC ;
 int const FF_PROFILE_UNKNOWN ;
 scalar_t__ h264_get_profile_level (TYPE_1__ const*,int*,int *,int *) ;
 scalar_t__ hevc_get_profile_level (TYPE_1__ const*,int*,int *,int *) ;

__attribute__((used)) static bool profile_supported(const directx_va_mode_t *mode, const es_format_t *fmt,
                              const AVCodecContext *avctx)
{
    if (mode->p_profiles == ((void*)0))
        return 1;

    int profile = fmt->i_profile >= 0 ? fmt->i_profile : avctx->profile;
    if (mode->codec == AV_CODEC_ID_H264)
    {
        uint8_t h264_profile;
        if ( h264_get_profile_level(fmt, &h264_profile, ((void*)0), ((void*)0)) )
            profile = h264_profile;
    }
    if (mode->codec == AV_CODEC_ID_HEVC)
    {
        uint8_t hevc_profile;
        if (hevc_get_profile_level(fmt, &hevc_profile, ((void*)0), ((void*)0)) )
            profile = hevc_profile;
    }

    bool is_supported = 0;
    if (profile <= 0)
        is_supported = 1;
    else for (const int *p_profile = &mode->p_profiles[0]; *p_profile != FF_PROFILE_UNKNOWN; ++p_profile)
    {
        if (*p_profile == profile)
        {
            is_supported = 1;
            break;
        }
    }
    return is_supported;
}
