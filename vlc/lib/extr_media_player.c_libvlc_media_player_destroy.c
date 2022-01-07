
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int vlc_http_cookie_jar_t ;
struct TYPE_9__ {int * p_libvlc_instance; scalar_t__ p_md; int event_manager; int player; int listener; int aout_listener; } ;
typedef TYPE_1__ libvlc_media_player_t ;
typedef int libvlc_instance_t ;


 int assert (TYPE_1__*) ;
 int libvlc_event_manager_destroy (int *) ;
 int libvlc_media_release (scalar_t__) ;
 int libvlc_release (int *) ;
 int media_detach_preparsed_event (scalar_t__) ;
 int snapshot_was_taken ;
 int var_DelCallback (int ,char*,int ,TYPE_1__*) ;
 int var_Destroy (TYPE_1__*,char*) ;
 int * var_GetAddress (TYPE_1__*,char*) ;
 int vlc_http_cookies_destroy (int *) ;
 int vlc_object_delete (TYPE_1__*) ;
 int vlc_object_instance (TYPE_1__*) ;
 int vlc_player_Delete (int ) ;
 int vlc_player_Lock (int ) ;
 int vlc_player_RemoveListener (int ,int ) ;
 int vlc_player_Unlock (int ) ;
 int vlc_player_aout_RemoveListener (int ,int ) ;

__attribute__((used)) static void libvlc_media_player_destroy( libvlc_media_player_t *p_mi )
{
    assert( p_mi );


    var_DelCallback( vlc_object_instance(p_mi),
                     "snapshot-file", snapshot_was_taken, p_mi );

    vlc_player_Lock(p_mi->player);
    vlc_player_aout_RemoveListener(p_mi->player, p_mi->aout_listener);
    vlc_player_RemoveListener(p_mi->player, p_mi->listener);
    vlc_player_Unlock(p_mi->player);

    vlc_player_Delete(p_mi->player);

    if (p_mi->p_md)
        media_detach_preparsed_event(p_mi->p_md);
    libvlc_event_manager_destroy(&p_mi->event_manager);
    libvlc_media_release( p_mi->p_md );

    vlc_http_cookie_jar_t *cookies = var_GetAddress( p_mi, "http-cookies" );
    if ( cookies )
    {
        var_Destroy( p_mi, "http-cookies" );
        vlc_http_cookies_destroy( cookies );
    }

    libvlc_instance_t *instance = p_mi->p_libvlc_instance;
    vlc_object_delete(p_mi);
    libvlc_release(instance);
}
