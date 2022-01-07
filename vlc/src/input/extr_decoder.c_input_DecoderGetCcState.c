
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_fourcc_t ;
struct TYPE_2__ {int ** pp_decoder; } ;
struct decoder_owner {int lock; TYPE_1__ cc; } ;
typedef int decoder_t ;


 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 struct decoder_owner* dec_get_owner (int *) ;
 int input_DecoderHasCCChanFlag (struct decoder_owner*,int ,int) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

int input_DecoderGetCcState( decoder_t *p_dec, vlc_fourcc_t codec,
                             int i_channel, bool *pb_decode )
{
    struct decoder_owner *p_owner = dec_get_owner( p_dec );

    if( !input_DecoderHasCCChanFlag( p_owner, codec, i_channel ) )
        return VLC_EGENERIC;

    vlc_mutex_lock( &p_owner->lock );
    *pb_decode = p_owner->cc.pp_decoder[i_channel] != ((void*)0);
    vlc_mutex_unlock( &p_owner->lock );
    return VLC_SUCCESS;
}
