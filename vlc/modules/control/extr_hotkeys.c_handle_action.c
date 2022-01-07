
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int vout_thread_t ;
typedef int vlc_playlist_t ;
typedef int vlc_player_t ;
typedef scalar_t__ vlc_action_id_t ;
struct TYPE_13__ {int (* pf_vout ) (TYPE_4__*,int *,scalar_t__) ;int (* pf_player ) (TYPE_4__*,int *,scalar_t__) ;int (* pf_playlist ) (TYPE_4__*,int *,scalar_t__) ;int (* pf_intf ) (TYPE_4__*,scalar_t__) ;} ;
struct TYPE_11__ {scalar_t__ first; scalar_t__ last; } ;
struct vlc_action {scalar_t__ type; scalar_t__ pl_need_lock; TYPE_3__ handler; TYPE_1__ range; } ;
struct TYPE_14__ {TYPE_2__* p_sys; } ;
typedef TYPE_4__ intf_thread_t ;
struct TYPE_12__ {int * playlist; } ;



 scalar_t__ NULL_ACTION ;



 struct vlc_action* actions ;
 void msg_Warn (TYPE_4__*,char*,scalar_t__) ;
 int stub1 (TYPE_4__*,scalar_t__) ;
 int stub2 (TYPE_4__*,int *,scalar_t__) ;
 int stub3 (TYPE_4__*,int *,scalar_t__) ;
 int stub4 (TYPE_4__*,int *,scalar_t__) ;
 int vlc_assert_unreachable () ;
 int * vlc_player_vout_Hold (int *) ;
 int * vlc_playlist_GetPlayer (int *) ;
 int vlc_playlist_Lock (int *) ;
 int vlc_playlist_Unlock (int *) ;
 int vout_Release (int *) ;

__attribute__((used)) static void
handle_action(intf_thread_t *intf, vlc_action_id_t action_id)
{
    size_t action_idx;
    for (action_idx = 0; actions[action_idx].type != NULL_ACTION; ++action_idx)
        if (actions[action_idx].range.first <= action_id &&
            actions[action_idx].range.last >= action_id)
            break;
    if (actions[action_idx].type == NULL_ACTION)
        return msg_Warn(intf, "no handler for action %d", action_id);
    struct vlc_action const *action = actions + action_idx;

    vlc_playlist_t *playlist = intf->p_sys->playlist;
    if (action->pl_need_lock)
        vlc_playlist_Lock(playlist);

    switch (action->type)
    {
        case 131:
            action->handler.pf_intf(intf, action_id);
            break;
        case 129:
            action->handler.pf_playlist(intf, playlist, action_id);
            break;
        case 130:
        case 128:
        {
            vlc_player_t *player = vlc_playlist_GetPlayer(playlist);
            if (action->type == 130)
                action->handler.pf_player(intf, player, action_id);
            else
            {
                vout_thread_t *vout = vlc_player_vout_Hold(player);
                action->handler.pf_vout(intf, vout, action_id);
                vout_Release(vout);
            }
            break;
        }
        default:
            vlc_assert_unreachable();
    }

    if (action->pl_need_lock)
        vlc_playlist_Unlock(playlist);
}
