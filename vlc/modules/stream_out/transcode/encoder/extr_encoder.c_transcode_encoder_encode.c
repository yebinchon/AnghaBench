
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





 int * transcode_encoder_audio_encode (TYPE_3__*,void*) ;
 int * transcode_encoder_spu_encode (TYPE_3__*,void*) ;
 int * transcode_encoder_video_encode (TYPE_3__*,void*) ;
 int vlc_assert_unreachable () ;

block_t * transcode_encoder_encode( transcode_encoder_t *p_enc, void *in )
{
    switch( p_enc->p_encoder->fmt_in.i_cat )
    {
        case 128:
            return transcode_encoder_video_encode( p_enc, in );
        case 130:
            return transcode_encoder_audio_encode( p_enc, in );
        case 129:
            return transcode_encoder_spu_encode( p_enc, in );
        default:
            vlc_assert_unreachable();
            return ((void*)0);
    }
}
