
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vout_thread_t ;
typedef int subpicture_updater_t ;
struct TYPE_4__ {scalar_t__ i_channel; int b_subtitle; scalar_t__ i_order; } ;
typedef TYPE_1__ subpicture_t ;
struct decoder_owner {scalar_t__ i_spu_channel; int vout_thread_started; int vout_order; scalar_t__ i_spu_order; int lock; int * p_vout; int p_clock; int p_resource; scalar_t__ error; } ;
typedef enum vlc_vout_order { ____Placeholder_vlc_vout_order } vlc_vout_order ;
typedef int decoder_t ;


 int DECODER_SPU_VOUT_WAIT_DURATION ;
 int VLC_VOUT_ORDER_NONE ;
 scalar_t__ VOUT_SPU_CHANNEL_INVALID ;
 int assert (int) ;
 struct decoder_owner* dec_get_owner (int *) ;
 int decoder_Notify (struct decoder_owner*,int ,int *,...) ;
 int * input_resource_HoldVout (int ) ;
 int msg_Warn (int *,char*) ;
 int on_vout_started ;
 int on_vout_stopped ;
 TYPE_1__* subpicture_New (int const*) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vlc_tick_sleep (int ) ;
 scalar_t__ vout_RegisterSubpictureChannelInternal (int *,int ,int*) ;
 int vout_Release (int *) ;
 int vout_UnregisterSubpictureChannel (int *,scalar_t__) ;

__attribute__((used)) static subpicture_t *ModuleThread_NewSpuBuffer( decoder_t *p_dec,
                                     const subpicture_updater_t *p_updater )
{
    struct decoder_owner *p_owner = dec_get_owner( p_dec );
    vout_thread_t *p_vout = ((void*)0);
    subpicture_t *p_subpic;
    int i_attempts = 30;

    while( i_attempts-- )
    {
        if( p_owner->error )
            break;

        p_vout = input_resource_HoldVout( p_owner->p_resource );
        if( p_vout )
            break;

        vlc_tick_sleep( DECODER_SPU_VOUT_WAIT_DURATION );
    }

    if( !p_vout )
    {
        msg_Warn( p_dec, "no vout found, dropping subpicture" );
        if( p_owner->p_vout )
        {
            assert(p_owner->i_spu_channel != VOUT_SPU_CHANNEL_INVALID);
            decoder_Notify(p_owner, on_vout_stopped, p_owner->p_vout);

            vlc_mutex_lock( &p_owner->lock );
            vout_UnregisterSubpictureChannel(p_owner->p_vout,
                                             p_owner->i_spu_channel);
            p_owner->i_spu_channel = VOUT_SPU_CHANNEL_INVALID;

            vout_Release(p_owner->p_vout);
            p_owner->p_vout = ((void*)0);
            p_owner->vout_thread_started = 0;
            vlc_mutex_unlock( &p_owner->lock );
        }
        return ((void*)0);
    }

    if( p_owner->p_vout != p_vout )
    {
        if (p_owner->p_vout)
            decoder_Notify(p_owner, on_vout_stopped, p_owner->p_vout);

        vlc_mutex_lock(&p_owner->lock);

        if (p_owner->p_vout)
        {

            assert(p_owner->i_spu_channel != VOUT_SPU_CHANNEL_INVALID);
            vout_UnregisterSubpictureChannel(p_owner->p_vout,
                                             p_owner->i_spu_channel);
            vout_Release(p_owner->p_vout);
            p_owner->p_vout = ((void*)0);
            p_owner->vout_thread_started = 0;
        }

        enum vlc_vout_order channel_order;
        p_owner->i_spu_channel =
            vout_RegisterSubpictureChannelInternal(p_vout, p_owner->p_clock,
                                                   &channel_order);
        p_owner->i_spu_order = 0;

        if (p_owner->i_spu_channel == VOUT_SPU_CHANNEL_INVALID)
        {

            vlc_mutex_unlock(&p_owner->lock);
            vout_Release(p_vout);
            return ((void*)0);
        }

        p_owner->p_vout = p_vout;
        p_owner->vout_thread_started = 1;
        p_owner->vout_order = channel_order;
        vlc_mutex_unlock(&p_owner->lock);

        assert(channel_order != VLC_VOUT_ORDER_NONE);
        decoder_Notify(p_owner, on_vout_started, p_vout, channel_order);
    }
    else
        vout_Release(p_vout);

    p_subpic = subpicture_New( p_updater );
    if( p_subpic )
    {
        p_subpic->i_channel = p_owner->i_spu_channel;
        p_subpic->i_order = p_owner->i_spu_order++;
        p_subpic->b_subtitle = 1;
    }

    return p_subpic;
}
