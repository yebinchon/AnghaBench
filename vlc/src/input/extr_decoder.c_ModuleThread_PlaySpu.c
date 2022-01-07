
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int vout_thread_t ;
struct TYPE_5__ {scalar_t__ i_start; } ;
typedef TYPE_1__ subpicture_t ;
struct decoder_owner {int b_has_data; int lock; int wait_acknowledge; scalar_t__ b_waiting; int * p_vout; int dec; } ;
typedef int decoder_t ;


 int DecoderWaitUnblock (struct decoder_owner*) ;
 scalar_t__ VLC_TICK_INVALID ;
 int msg_Warn (int *,char*) ;
 int subpicture_Delete (TYPE_1__*) ;
 int vlc_cond_signal (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vout_PutSubpicture (int *,TYPE_1__*) ;

__attribute__((used)) static void ModuleThread_PlaySpu( struct decoder_owner *p_owner, subpicture_t *p_subpic )
{
    decoder_t *p_dec = &p_owner->dec;
    vout_thread_t *p_vout = p_owner->p_vout;


    if( p_subpic->i_start == VLC_TICK_INVALID )
    {
        msg_Warn( p_dec, "non-dated spu buffer received" );
        subpicture_Delete( p_subpic );
        return;
    }


    vlc_mutex_lock( &p_owner->lock );

    if( p_owner->b_waiting )
    {
        p_owner->b_has_data = 1;
        vlc_cond_signal( &p_owner->wait_acknowledge );
    }

    DecoderWaitUnblock( p_owner );
    vlc_mutex_unlock( &p_owner->lock );

    if( p_subpic->i_start == VLC_TICK_INVALID )
    {
        subpicture_Delete( p_subpic );
        return;
    }

    vout_PutSubpicture( p_vout, p_subpic );
}
