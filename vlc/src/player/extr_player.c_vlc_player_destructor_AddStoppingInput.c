
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int stopping_inputs; int inputs; } ;
struct TYPE_9__ {TYPE_3__ destructor; } ;
typedef TYPE_4__ vlc_player_t ;
struct vlc_player_input {TYPE_2__* player; int node; } ;
struct TYPE_6__ {int wait; } ;
struct TYPE_7__ {TYPE_1__ destructor; } ;


 int vlc_cond_signal (int *) ;
 scalar_t__ vlc_list_HasInput (int *,struct vlc_player_input*) ;
 int vlc_list_append (int *,int *) ;
 int vlc_list_remove (int *) ;

void
vlc_player_destructor_AddStoppingInput(vlc_player_t *player,
                                       struct vlc_player_input *input)
{

    if (vlc_list_HasInput(&player->destructor.inputs, input))
        vlc_list_remove(&input->node);
    if (!vlc_list_HasInput(&player->destructor.stopping_inputs, input))
    {
        vlc_list_append(&input->node, &player->destructor.stopping_inputs);
        vlc_cond_signal(&input->player->destructor.wait);
    }
}
