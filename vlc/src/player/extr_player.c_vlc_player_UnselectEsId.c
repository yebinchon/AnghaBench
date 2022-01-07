
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_player_t ;
typedef int vlc_es_id_t ;
struct vlc_player_input {int thread; } ;


 int INPUT_CONTROL_UNSET_ES ;
 int VLC_SUCCESS ;
 int input_ControlPushEsHelper (int ,int ,int *) ;
 struct vlc_player_input* vlc_player_get_input_locked (int *) ;
 int vlc_player_osd_Track (int *,int *,int) ;

void
vlc_player_UnselectEsId(vlc_player_t *player, vlc_es_id_t *id)
{
    struct vlc_player_input *input = vlc_player_get_input_locked(player);
    if (!input)
        return;

    int ret = input_ControlPushEsHelper(input->thread, INPUT_CONTROL_UNSET_ES,
                                        id);
    if (ret == VLC_SUCCESS)
        vlc_player_osd_Track(player, id, 0);
}
