
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_player_t ;
struct vlc_player_program {int dummy; } ;
struct TYPE_2__ {size_t size; struct vlc_player_program const** data; } ;
struct vlc_player_input {TYPE_1__ program_vector; } ;


 int assert (int) ;
 struct vlc_player_input* vlc_player_get_input_locked (int *) ;

const struct vlc_player_program *
vlc_player_GetProgramAt(vlc_player_t *player, size_t index)
{
    struct vlc_player_input *input = vlc_player_get_input_locked(player);

    if (!input)
        return ((void*)0);

    assert(index < input->program_vector.size);
    return input->program_vector.data[index];
}
