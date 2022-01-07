
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_player_t ;
struct vlc_player_input {int error; } ;
typedef enum vlc_player_error { ____Placeholder_vlc_player_error } vlc_player_error ;


 int VLC_PLAYER_ERROR_NONE ;
 struct vlc_player_input* vlc_player_get_input_locked (int *) ;

enum vlc_player_error
vlc_player_GetError(vlc_player_t *player)
{
    struct vlc_player_input *input = vlc_player_get_input_locked(player);
    return input ? input->error : VLC_PLAYER_ERROR_NONE;
}
