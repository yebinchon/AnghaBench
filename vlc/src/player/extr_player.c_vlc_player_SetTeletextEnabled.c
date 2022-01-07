
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_player_t ;
struct vlc_player_input {TYPE_2__* teletext_menu; } ;
struct TYPE_3__ {int es_id; } ;
struct TYPE_4__ {TYPE_1__ t; } ;


 int VLC_PLAYER_SELECT_EXCLUSIVE ;
 int vlc_player_SelectEsId (int *,int ,int ) ;
 int vlc_player_UnselectEsId (int *,int ) ;
 struct vlc_player_input* vlc_player_get_input_locked (int *) ;

void
vlc_player_SetTeletextEnabled(vlc_player_t *player, bool enabled)
{
    struct vlc_player_input *input = vlc_player_get_input_locked(player);
    if (!input || !input->teletext_menu)
        return;
    if (enabled)
        vlc_player_SelectEsId(player, input->teletext_menu->t.es_id,
                              VLC_PLAYER_SELECT_EXCLUSIVE);
    else
        vlc_player_UnselectEsId(player, input->teletext_menu->t.es_id);
}
