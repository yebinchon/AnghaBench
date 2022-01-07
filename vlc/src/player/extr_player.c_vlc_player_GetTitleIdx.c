
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_player_t ;
struct vlc_player_title {int dummy; } ;
struct vlc_player_input {TYPE_1__* titles; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {size_t count; struct vlc_player_title const* array; } ;


 struct vlc_player_input* vlc_player_get_input_locked (int *) ;

__attribute__((used)) static ssize_t
vlc_player_GetTitleIdx(vlc_player_t *player,
                       const struct vlc_player_title *title)
{
    struct vlc_player_input *input = vlc_player_get_input_locked(player);
    if (input && input->titles)
        for (size_t i = 0; i < input->titles->count; ++i)
            if (&input->titles->array[i] == title)
                return i;
    return -1;
}
