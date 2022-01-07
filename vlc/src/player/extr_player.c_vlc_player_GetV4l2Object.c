
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_player_t ;
typedef int vlc_object_t ;
struct vlc_player_input {scalar_t__ thread; } ;


 scalar_t__ var_Type (scalar_t__,char*) ;
 struct vlc_player_input* vlc_player_get_input_locked (int *) ;

vlc_object_t *
vlc_player_GetV4l2Object(vlc_player_t *player)
{
    struct vlc_player_input *input = vlc_player_get_input_locked(player);
    return input && var_Type(input->thread, "controls") != 0 ?
           (vlc_object_t*) input->thread : ((void*)0);
}
