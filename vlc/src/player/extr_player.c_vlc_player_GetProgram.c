
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_player_t ;
typedef struct vlc_player_program const vlc_player_program ;
struct vlc_player_input {int program_vector; } ;


 struct vlc_player_input* vlc_player_get_input_locked (int *) ;
 struct vlc_player_program const* vlc_player_program_vector_FindById (int *,int,int *) ;

const struct vlc_player_program *
vlc_player_GetProgram(vlc_player_t *player, int id)
{
    struct vlc_player_input *input = vlc_player_get_input_locked(player);

    if (!input)
        return ((void*)0);

    struct vlc_player_program *prgm =
        vlc_player_program_vector_FindById(&input->program_vector, id, ((void*)0));
    return prgm;
}
