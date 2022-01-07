
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vlm_t ;
struct TYPE_8__ {int psz_name; } ;
struct TYPE_9__ {int instance; int i_instance; TYPE_1__ cfg; } ;
typedef TYPE_2__ vlm_media_sys_t ;
struct TYPE_10__ {struct TYPE_10__* psz_name; int p_item; int p_parent; int listener; int * player; } ;
typedef TYPE_3__ vlm_media_instance_sys_t ;
typedef int vlc_player_t ;
typedef int int64_t ;


 int TAB_REMOVE (int ,int ,TYPE_3__*) ;
 int free (TYPE_3__*) ;
 int input_item_Release (int ) ;
 int vlc_object_delete (int ) ;
 int vlc_player_Delete (int *) ;
 int vlc_player_GetCurrentMedia (int *) ;
 int vlc_player_Lock (int *) ;
 int vlc_player_RemoveListener (int *,int ) ;
 int vlc_player_Stop (int *) ;
 int vlc_player_Unlock (int *) ;
 int vlm_SendEventMediaInstanceStopped (int *,int ,int ) ;

__attribute__((used)) static void vlm_MediaInstanceDelete( vlm_t *p_vlm, int64_t id, vlm_media_instance_sys_t *p_instance, vlm_media_sys_t *p_media )
{
    vlc_player_t *player = p_instance->player;

    vlc_player_Lock(player);
    vlc_player_RemoveListener(player, p_instance->listener);
    vlc_player_Stop(player);
    bool had_media = vlc_player_GetCurrentMedia(player);
    vlc_player_Unlock(player);
    vlc_player_Delete(player);

    if (had_media)
        vlm_SendEventMediaInstanceStopped( p_vlm, id, p_media->cfg.psz_name );
    vlc_object_delete(p_instance->p_parent);

    TAB_REMOVE( p_media->i_instance, p_media->instance, p_instance );
    input_item_Release( p_instance->p_item );
    free( p_instance->psz_name );
    free( p_instance );
}
