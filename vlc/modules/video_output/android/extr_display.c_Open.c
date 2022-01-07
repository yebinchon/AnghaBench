
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vout_display_t ;
typedef int vout_display_cfg_t ;
typedef int vlc_video_context ;
struct TYPE_4__ {scalar_t__ i_chroma; int projection_mode; } ;
typedef TYPE_1__ video_format_t ;


 int OpenCommon (int *,int const*,TYPE_1__*) ;
 int PROJECTION_MODE_RECTANGULAR ;
 scalar_t__ VLC_CODEC_ANDROID_OPAQUE ;
 int VLC_EGENERIC ;

__attribute__((used)) static int Open(vout_display_t *vd, const vout_display_cfg_t *cfg,
                video_format_t *fmtp, vlc_video_context *context)
{
    if (fmtp->i_chroma == VLC_CODEC_ANDROID_OPAQUE)
        return VLC_EGENERIC;




    fmtp->projection_mode = PROJECTION_MODE_RECTANGULAR;

    (void) context;
    return OpenCommon(vd, cfg, fmtp);
}
