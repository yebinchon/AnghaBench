
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct decoder_owner {int lock; int p_vout; } ;
struct TYPE_5__ {scalar_t__ i_cat; } ;
struct TYPE_6__ {TYPE_1__ fmt_in; } ;
typedef TYPE_2__ decoder_t ;


 scalar_t__ VIDEO_ES ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int assert (int) ;
 struct decoder_owner* dec_get_owner (TYPE_2__*) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vout_UnregisterSubpictureChannel (int ,size_t) ;

int input_DecoderDelVoutOverlay( decoder_t *dec, size_t channel )
{
    struct decoder_owner *owner = dec_get_owner( dec );
    assert( dec->fmt_in.i_cat == VIDEO_ES );

    vlc_mutex_lock( &owner->lock );

    if( !owner->p_vout )
    {
        vlc_mutex_unlock( &owner->lock );
        return VLC_EGENERIC;
    }
    vout_UnregisterSubpictureChannel( owner->p_vout, channel );

    vlc_mutex_unlock( &owner->lock );
    return VLC_SUCCESS;
}
