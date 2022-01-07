
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int vlc_fourcc_t ;
typedef int transcode_encoder_config_t ;
struct TYPE_8__ {int i_cat; } ;
typedef TYPE_1__ es_format_t ;




 int VLC_EGENERIC ;
 int transcode_encoder_audio_test (int *,int const*,TYPE_1__ const*,int ,TYPE_1__*) ;
 int transcode_encoder_video_test (int *,int const*,TYPE_1__ const*,int ,TYPE_1__*) ;

int transcode_encoder_test( vlc_object_t *p_obj,
                            const transcode_encoder_config_t *p_cfg,
                            const es_format_t *p_dec_fmtin,
                            vlc_fourcc_t i_codec_in,
                            es_format_t *p_enc_wanted_in )
{
    switch ( p_dec_fmtin->i_cat )
    {
        case 128:
            return transcode_encoder_video_test( p_obj, p_cfg, p_dec_fmtin,
                                                 i_codec_in, p_enc_wanted_in );
        case 129:
            return transcode_encoder_audio_test( p_obj, p_cfg, p_dec_fmtin,
                                                 i_codec_in, p_enc_wanted_in );
        default:
            return VLC_EGENERIC;
    }
}
