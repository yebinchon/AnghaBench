
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_player_t ;
struct vlc_player_input {int thread; } ;


 int INPUT_CONTROL_SET_SEEKPOINT_PREV ;
 int VLC_SUCCESS ;
 int _ (char*) ;
 int input_ControlPush (int ,int ,int *) ;
 struct vlc_player_input* vlc_player_get_input_locked (int *) ;
 int vlc_player_osd_Message (int *,int ) ;

void
vlc_player_SelectPrevChapter(vlc_player_t *player)
{
    struct vlc_player_input *input = vlc_player_get_input_locked(player);
    if (!input)
        return;
    int ret = input_ControlPush(input->thread, INPUT_CONTROL_SET_SEEKPOINT_PREV,
                                ((void*)0));
    if (ret == VLC_SUCCESS)
        vlc_player_osd_Message(player, _("Previous chapter"));
}
