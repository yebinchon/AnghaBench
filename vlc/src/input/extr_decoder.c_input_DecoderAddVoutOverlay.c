
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {size_t i_channel; int b_ephemer; scalar_t__ i_order; int i_stop; int i_start; } ;
typedef TYPE_2__ subpicture_t ;
struct decoder_owner {int lock; int p_vout; } ;
typedef int ssize_t ;
struct TYPE_8__ {scalar_t__ i_cat; } ;
struct TYPE_10__ {TYPE_1__ fmt_in; } ;
typedef TYPE_3__ decoder_t ;


 scalar_t__ VIDEO_ES ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int assert (int) ;
 struct decoder_owner* dec_get_owner (TYPE_3__*) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vlc_tick_now () ;
 int vout_PutSubpicture (int ,TYPE_2__*) ;
 int vout_RegisterSubpictureChannel (int ) ;

int input_DecoderAddVoutOverlay( decoder_t *dec, subpicture_t *sub,
                                 size_t *channel )
{
    struct decoder_owner *owner = dec_get_owner( dec );
    assert( dec->fmt_in.i_cat == VIDEO_ES );
    assert( sub && channel );

    vlc_mutex_lock( &owner->lock );

    if( !owner->p_vout )
    {
        vlc_mutex_unlock( &owner->lock );
        return VLC_EGENERIC;
    }
    ssize_t channel_id =
        vout_RegisterSubpictureChannel( owner->p_vout );
    if (channel_id == -1)
    {
        vlc_mutex_unlock( &owner->lock );
        return VLC_EGENERIC;
    }
    sub->i_start = sub->i_stop = vlc_tick_now();
    sub->i_channel = *channel = channel_id;
    sub->i_order = 0;
    sub->b_ephemer = 1;
    vout_PutSubpicture( owner->p_vout, sub );

    vlc_mutex_unlock( &owner->lock );
    return VLC_SUCCESS;
}
