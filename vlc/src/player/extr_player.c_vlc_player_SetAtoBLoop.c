
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* vlc_tick_t ;
typedef int vlc_player_t ;
struct vlc_player_input {TYPE_1__* abloop_state; } ;
typedef enum vlc_player_abloop { ____Placeholder_vlc_player_abloop } vlc_player_abloop ;
struct TYPE_2__ {int set; void* time; float pos; } ;


 int VLC_EGENERIC ;



 int VLC_SUCCESS ;
 void* VLC_TICK_INVALID ;
 int on_atobloop_changed ;
 int vlc_assert_unreachable () ;
 int vlc_player_CanSeek (int *) ;
 float vlc_player_GetPosition (int *) ;
 void* vlc_player_GetTime (int *) ;
 int vlc_player_SendEvent (int *,int ,int,void*,float) ;
 int vlc_player_SetPosition (int *,float) ;
 int vlc_player_SetTime (int *,void*) ;
 struct vlc_player_input* vlc_player_get_input_locked (int *) ;

int
vlc_player_SetAtoBLoop(vlc_player_t *player, enum vlc_player_abloop abloop)
{
    struct vlc_player_input *input = vlc_player_get_input_locked(player);

    if (!input || !vlc_player_CanSeek(player))
        return VLC_EGENERIC;

    vlc_tick_t time = vlc_player_GetTime(player);
    float pos = vlc_player_GetPosition(player);
    int ret = VLC_SUCCESS;
    switch (abloop)
    {
        case 130:
            if (input->abloop_state[1].set)
                return VLC_EGENERIC;
            input->abloop_state[0].time = time;
            input->abloop_state[0].pos = pos;
            input->abloop_state[0].set = 1;
            break;
        case 129:
            if (!input->abloop_state[0].set)
                return VLC_EGENERIC;
            input->abloop_state[1].time = time;
            input->abloop_state[1].pos = pos;
            input->abloop_state[1].set = 1;
            if (input->abloop_state[0].time != VLC_TICK_INVALID
             && time != VLC_TICK_INVALID)
            {
                if (time > input->abloop_state[0].time)
                {
                    vlc_player_SetTime(player, input->abloop_state[0].time);
                    break;
                }
            }
            else if (pos > input->abloop_state[0].pos)
            {
                vlc_player_SetPosition(player, input->abloop_state[0].pos);
                break;
            }


            abloop = 128;
            ret = VLC_EGENERIC;

        case 128:
            input->abloop_state[0].set = input->abloop_state[1].set = 0;
            time = VLC_TICK_INVALID;
            pos = 0.f;
            break;
        default:
            vlc_assert_unreachable();
    }
    vlc_player_SendEvent(player, on_atobloop_changed, abloop, time, pos);
    return ret;
}
