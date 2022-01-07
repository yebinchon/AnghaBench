
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_player_t ;
struct vlc_player_input {int teletext_enabled; TYPE_2__* teletext_menu; int * player; } ;
struct vlc_input_event_es {int action; int id; int fmt; int title; } ;
struct TYPE_4__ {int es_id; } ;
struct TYPE_5__ {TYPE_1__ t; } ;







 int assert (int) ;
 int msg_Warn (int *,char*) ;
 int on_teletext_enabled_changed ;
 int on_teletext_menu_changed ;
 int vlc_assert_unreachable () ;
 int vlc_player_SendEvent (int *,int ,int) ;
 int vlc_player_track_priv_Delete (TYPE_2__*) ;
 TYPE_2__* vlc_player_track_priv_New (int ,int ,int ) ;

__attribute__((used)) static void
vlc_player_input_HandleTeletextMenu(struct vlc_player_input *input,
                                    const struct vlc_input_event_es *ev)
{
    vlc_player_t *player = input->player;
    switch (ev->action)
    {
        case 132:
            if (input->teletext_menu)
            {
                msg_Warn(player, "Can't handle more than one teletext menu "
                         "track. Using the last one.");
                vlc_player_track_priv_Delete(input->teletext_menu);
            }
            input->teletext_menu = vlc_player_track_priv_New(ev->id, ev->title,
                                                             ev->fmt);
            if (!input->teletext_menu)
                return;

            vlc_player_SendEvent(player, on_teletext_menu_changed, 1);
            break;
        case 131:
        {
            if (input->teletext_menu && input->teletext_menu->t.es_id == ev->id)
            {
                assert(!input->teletext_enabled);

                vlc_player_track_priv_Delete(input->teletext_menu);
                input->teletext_menu = ((void*)0);
                vlc_player_SendEvent(player, on_teletext_menu_changed, 0);
            }
            break;
        }
        case 128:
            break;
        case 130:
        case 129:
            if (input->teletext_menu->t.es_id == ev->id)
            {
                input->teletext_enabled = ev->action == 130;
                vlc_player_SendEvent(player, on_teletext_enabled_changed,
                                     input->teletext_enabled);
            }
            break;
        default:
            vlc_assert_unreachable();
    }
}
