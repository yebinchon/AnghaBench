
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int joinable_inputs; int inputs; int stopping_inputs; } ;
struct TYPE_9__ {TYPE_1__ destructor; } ;
typedef TYPE_4__ vlc_player_t ;
struct vlc_player_input {int started; TYPE_3__* player; int node; } ;
struct TYPE_7__ {int wait; } ;
struct TYPE_8__ {TYPE_2__ destructor; } ;


 int assert (int) ;
 int vlc_cond_signal (int *) ;
 int vlc_list_HasInput (int *,struct vlc_player_input*) ;
 int vlc_list_append (int *,int *) ;

__attribute__((used)) static void
vlc_player_destructor_AddInput(vlc_player_t *player,
                               struct vlc_player_input *input)
{
    if (input->started)
    {
        input->started = 0;


        assert(!vlc_list_HasInput(&player->destructor.stopping_inputs, input));
        assert(!vlc_list_HasInput(&player->destructor.joinable_inputs, input));
        vlc_list_append(&input->node, &player->destructor.inputs);
    }
    else
    {


        assert(!vlc_list_HasInput(&player->destructor.inputs, input));
        assert(!vlc_list_HasInput(&player->destructor.joinable_inputs, input));
        vlc_list_append(&input->node, &player->destructor.joinable_inputs);
    }

    vlc_cond_signal(&input->player->destructor.wait);
}
