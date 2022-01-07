
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_player_t ;
struct vlc_player_program {int scrambled; } ;
struct TYPE_3__ {int * player; } ;
typedef TYPE_1__ libvlc_media_player_t ;


 struct vlc_player_program* vlc_player_GetSelectedProgram (int *) ;
 int vlc_player_Lock (int *) ;
 int vlc_player_Unlock (int *) ;

bool libvlc_media_player_program_scrambled(libvlc_media_player_t *p_mi)
{
    bool b_program_scrambled = 0;

    vlc_player_t *player = p_mi->player;
    vlc_player_Lock(player);

    const struct vlc_player_program *program =
        vlc_player_GetSelectedProgram(player);
    if (!program)
        goto end;

    b_program_scrambled = program->scrambled;

    vlc_player_Unlock(player);
end:
    return b_program_scrambled;
}
