
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_player_t ;
struct vlc_player_input {int thread; } ;
typedef enum vlc_player_nav { ____Placeholder_vlc_player_nav } vlc_player_nav ;
typedef enum input_control_e { ____Placeholder_input_control_e } input_control_e ;


 int INPUT_CONTROL_NAV_ACTIVATE ;
 int INPUT_CONTROL_NAV_DOWN ;
 int INPUT_CONTROL_NAV_LEFT ;
 int INPUT_CONTROL_NAV_MENU ;
 int INPUT_CONTROL_NAV_POPUP ;
 int INPUT_CONTROL_NAV_RIGHT ;
 int INPUT_CONTROL_NAV_UP ;







 int input_ControlPushHelper (int ,int,int *) ;
 int vlc_assert_unreachable () ;
 struct vlc_player_input* vlc_player_get_input_locked (int *) ;

void
vlc_player_Navigate(vlc_player_t *player, enum vlc_player_nav nav)
{
    struct vlc_player_input *input = vlc_player_get_input_locked(player);

    if (!input)
        return;

    enum input_control_e control;
    switch (nav)
    {
        case 134:
            control = INPUT_CONTROL_NAV_ACTIVATE;
            break;
        case 128:
            control = INPUT_CONTROL_NAV_UP;
            break;
        case 133:
            control = INPUT_CONTROL_NAV_DOWN;
            break;
        case 132:
            control = INPUT_CONTROL_NAV_LEFT;
            break;
        case 129:
            control = INPUT_CONTROL_NAV_RIGHT;
            break;
        case 130:
            control = INPUT_CONTROL_NAV_POPUP;
            break;
        case 131:
            control = INPUT_CONTROL_NAV_MENU;
            break;
        default:
            vlc_assert_unreachable();
    }
    input_ControlPushHelper(input->thread, control, ((void*)0));
}
