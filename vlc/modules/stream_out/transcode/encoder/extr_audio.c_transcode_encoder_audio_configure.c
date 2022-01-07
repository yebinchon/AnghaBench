
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int p_encoder; } ;
typedef TYPE_1__ transcode_encoder_t ;
typedef int transcode_encoder_config_t ;
typedef int audio_format_t ;


 int encoder_audio_configure (int const*,int const*,int ,int) ;

int transcode_encoder_audio_configure( const transcode_encoder_config_t *p_cfg,
                                       const audio_format_t *p_dec_out,
                                       transcode_encoder_t *p_enc,
                                       bool b_keep_fmtin )
{
    return encoder_audio_configure( p_cfg, p_dec_out, p_enc->p_encoder, b_keep_fmtin );
}
