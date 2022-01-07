
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vlc_player_input {TYPE_1__* abloop_state; } ;
struct TYPE_2__ {scalar_t__ set; } ;


 int vlc_player_input_GetPos (struct vlc_player_input*) ;
 int vlc_player_input_GetTime (struct vlc_player_input*) ;
 int vlc_player_input_HandleAtoBLoop (struct vlc_player_input*,int ,int ) ;

__attribute__((used)) static void
vlc_player_input_UpdateTime(struct vlc_player_input *input)
{
    if (input->abloop_state[0].set && input->abloop_state[1].set)
        vlc_player_input_HandleAtoBLoop(input, vlc_player_input_GetTime(input),
                                        vlc_player_input_GetPos(input));
}
