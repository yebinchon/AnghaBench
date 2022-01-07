
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* p_encoder; } ;
typedef TYPE_3__ transcode_encoder_t ;
typedef int transcode_encoder_config_t ;
struct TYPE_8__ {int i_cat; } ;
struct TYPE_9__ {TYPE_1__ fmt_in; } ;





 int VLC_EGENERIC ;
 int transcode_encoder_audio_open (TYPE_3__*,int const*) ;
 int transcode_encoder_spu_open (TYPE_3__*,int const*) ;
 int transcode_encoder_video_open (TYPE_3__*,int const*) ;

int transcode_encoder_open( transcode_encoder_t *p_enc,
                            const transcode_encoder_config_t *p_cfg )
{
    switch( p_enc->p_encoder->fmt_in.i_cat )
    {
        case 129:
            return transcode_encoder_spu_open( p_enc, p_cfg );
        case 130:
            return transcode_encoder_audio_open( p_enc, p_cfg );
        case 128:
            return transcode_encoder_video_open( p_enc, p_cfg );
        default:
            return VLC_EGENERIC;
    }
}
