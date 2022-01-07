
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_7__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ users; int lock_manage; int lock; int wait_manage; int thread; struct TYPE_8__* p_vod; int p_module; int schedule; int i_schedule; int media; int i_media; } ;
typedef TYPE_1__ vlm_t ;
struct TYPE_9__ {TYPE_1__* p_vlm; } ;


 int TAB_CLEAN (int ,int ) ;
 int VLM_CLEAR_MEDIAS ;
 int VLM_CLEAR_SCHEDULES ;
 int assert (int) ;
 TYPE_7__* libvlc_priv (int ) ;
 int module_unneed (TYPE_1__*,int ) ;
 int vlc_cancel (int ) ;
 int vlc_cond_destroy (int *) ;
 int vlc_join (int ,int *) ;
 int vlc_mutex_destroy (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vlc_object_delete (TYPE_1__*) ;
 int vlc_object_instance (TYPE_1__*) ;
 int vlm_ControlInternal (TYPE_1__*,int ) ;
 int vlm_mutex ;

void vlm_Delete( vlm_t *p_vlm )
{


    vlc_mutex_lock( &vlm_mutex );
    assert( p_vlm->users > 0 );
    if( --p_vlm->users == 0 )
        assert( libvlc_priv(vlc_object_instance(p_vlm))->p_vlm == p_vlm );
    else
        p_vlm = ((void*)0);

    if( p_vlm == ((void*)0) )
    {
        vlc_mutex_unlock( &vlm_mutex );
        return;
    }


    vlc_mutex_lock( &p_vlm->lock );
    vlm_ControlInternal( p_vlm, VLM_CLEAR_MEDIAS );
    TAB_CLEAN( p_vlm->i_media, p_vlm->media );

    vlm_ControlInternal( p_vlm, VLM_CLEAR_SCHEDULES );
    TAB_CLEAN( p_vlm->i_schedule, p_vlm->schedule );
    vlc_mutex_unlock( &p_vlm->lock );

    vlc_cancel( p_vlm->thread );

    if( p_vlm->p_vod )
    {
        module_unneed( p_vlm->p_vod, p_vlm->p_vod->p_module );
        vlc_object_delete(p_vlm->p_vod);
    }

    libvlc_priv(vlc_object_instance(p_vlm))->p_vlm = ((void*)0);
    vlc_mutex_unlock( &vlm_mutex );

    vlc_join( p_vlm->thread, ((void*)0) );

    vlc_cond_destroy( &p_vlm->wait_manage );
    vlc_mutex_destroy( &p_vlm->lock );
    vlc_mutex_destroy( &p_vlm->lock_manage );
    vlc_object_delete(p_vlm);
}
