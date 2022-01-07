
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* p_encoder; } ;
typedef TYPE_3__ transcode_encoder_t ;
typedef int block_t ;
struct TYPE_8__ {int i_cat; } ;
struct TYPE_9__ {TYPE_1__ fmt_in; } ;





 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int transcode_encoder_audio_drain (TYPE_3__*,int **) ;
 int transcode_encoder_opened (TYPE_3__*) ;
 int transcode_encoder_video_drain (TYPE_3__*,int **) ;

int transcode_encoder_drain( transcode_encoder_t *p_enc, block_t **out )
{
    if( !transcode_encoder_opened( p_enc ) )
        return VLC_EGENERIC;

    switch( p_enc->p_encoder->fmt_in.i_cat )
    {
        case 128:
            return transcode_encoder_video_drain( p_enc, out );
        case 130:
            return transcode_encoder_audio_drain( p_enc, out );
        case 129:
            return VLC_SUCCESS;
        default:
            return VLC_EGENERIC;
    }
}
