
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int i_y; int i_x; } ;
typedef TYPE_1__ vlc_mouse_t ;
struct TYPE_11__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ demux_t ;
struct TYPE_12__ {TYPE_1__ oldmouse; int bluray; } ;
typedef TYPE_3__ demux_sys_t ;


 int BD_VK_MOUSE_ACTIVATE ;
 int MOUSE_BUTTON_LEFT ;
 int bd_mouse_select (int ,int,int ,int ) ;
 int bd_user_input (int ,int,int ) ;
 scalar_t__ vlc_mouse_HasMoved (TYPE_1__*,TYPE_1__ const*) ;
 scalar_t__ vlc_mouse_HasPressed (TYPE_1__*,TYPE_1__ const*,int ) ;
 int vlc_mouse_Init (TYPE_1__*) ;

__attribute__((used)) static void onMouseEvent(const vlc_mouse_t *newmouse, void *user_data)
{
    demux_t *p_demux = user_data;
    demux_sys_t *p_sys = p_demux->p_sys;

    if (!newmouse) {
        vlc_mouse_Init(&p_sys->oldmouse);
        return;
    }

    if (vlc_mouse_HasMoved(&p_sys->oldmouse, newmouse))
        bd_mouse_select(p_sys->bluray, -1, newmouse->i_x, newmouse->i_y);

    if (vlc_mouse_HasPressed( &p_sys->oldmouse, newmouse, MOUSE_BUTTON_LEFT))
        bd_user_input(p_sys->bluray, -1, BD_VK_MOUSE_ACTIVATE);
    p_sys->oldmouse = *newmouse;
}
