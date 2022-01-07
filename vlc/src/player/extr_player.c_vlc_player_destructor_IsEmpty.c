
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int joinable_inputs; int stopping_inputs; int inputs; } ;
struct TYPE_5__ {TYPE_1__ destructor; } ;
typedef TYPE_2__ vlc_player_t ;


 scalar_t__ vlc_list_is_empty (int *) ;

__attribute__((used)) static bool vlc_player_destructor_IsEmpty(vlc_player_t *player)
{
    return vlc_list_is_empty(&player->destructor.inputs)
        && vlc_list_is_empty(&player->destructor.stopping_inputs)
        && vlc_list_is_empty(&player->destructor.joinable_inputs);
}
