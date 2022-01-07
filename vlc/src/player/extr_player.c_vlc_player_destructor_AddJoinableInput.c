
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int stopping_inputs; } ;
struct TYPE_6__ {TYPE_1__ destructor; } ;
typedef TYPE_2__ vlc_player_t ;
struct vlc_player_input {int started; int node; } ;


 int assert (int) ;
 scalar_t__ vlc_list_HasInput (int *,struct vlc_player_input*) ;
 int vlc_list_remove (int *) ;
 int vlc_player_destructor_AddInput (TYPE_2__*,struct vlc_player_input*) ;

void
vlc_player_destructor_AddJoinableInput(vlc_player_t *player,
                                       struct vlc_player_input *input)
{
    if (vlc_list_HasInput(&player->destructor.stopping_inputs, input))
        vlc_list_remove(&input->node);

    assert(!input->started);
    vlc_player_destructor_AddInput(player, input);
}
