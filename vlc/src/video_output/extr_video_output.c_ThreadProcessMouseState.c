
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


struct TYPE_24__ {TYPE_2__* p; } ;
typedef TYPE_3__ vout_thread_t ;
struct TYPE_25__ {int i_x; int i_y; scalar_t__ b_double_click; int i_pressed; } ;
typedef TYPE_4__ vlc_mouse_t ;
struct TYPE_22__ {int lock; scalar_t__ chain_static; scalar_t__ chain_interactive; } ;
struct TYPE_23__ {int mouse_opaque; int (* mouse_event ) (TYPE_4__*,int ) ;TYPE_4__ mouse; TYPE_1__ filter; int display_lock; int display; } ;


 int MOUSE_BUTTON_LEFT ;
 int filter_chain_MouseFilter (scalar_t__,TYPE_4__*,TYPE_4__*) ;
 int stub1 (TYPE_4__*,int ) ;
 int var_GetCoords (TYPE_3__*,char*,int*,int*) ;
 int var_SetCoords (TYPE_3__*,char*,int,int) ;
 int var_SetInteger (TYPE_3__*,char*,int ) ;
 int var_ToggleBool (TYPE_3__*,char*) ;
 scalar_t__ vlc_mouse_HasButton (TYPE_4__*,TYPE_4__*) ;
 scalar_t__ vlc_mouse_HasMoved (TYPE_4__*,TYPE_4__*) ;
 scalar_t__ vlc_mouse_HasPressed (TYPE_4__*,TYPE_4__*,int ) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vout_display_TranslateMouseState (int ,TYPE_4__*,TYPE_4__ const*) ;

__attribute__((used)) static void ThreadProcessMouseState(vout_thread_t *vout,
                                    const vlc_mouse_t *win_mouse)
{
    vlc_mouse_t vid_mouse, tmp1, tmp2, *m;


    vlc_mutex_lock(&vout->p->display_lock);
    vout_display_TranslateMouseState(vout->p->display, &vid_mouse, win_mouse);
    vlc_mutex_unlock(&vout->p->display_lock);


    m = &vid_mouse;
    vlc_mutex_lock(&vout->p->filter.lock);
    if (vout->p->filter.chain_static && vout->p->filter.chain_interactive) {
        if (!filter_chain_MouseFilter(vout->p->filter.chain_interactive,
                                      &tmp1, m))
            m = &tmp1;
        if (!filter_chain_MouseFilter(vout->p->filter.chain_static,
                                      &tmp2, m))
            m = &tmp2;
    }
    vlc_mutex_unlock(&vout->p->filter.lock);

    if (vlc_mouse_HasMoved(&vout->p->mouse, m))
        var_SetCoords(vout, "mouse-moved", m->i_x, m->i_y);

    if (vlc_mouse_HasButton(&vout->p->mouse, m)) {
        var_SetInteger(vout, "mouse-button-down", m->i_pressed);

        if (vlc_mouse_HasPressed(&vout->p->mouse, m, MOUSE_BUTTON_LEFT)) {

            int x, y;

            var_GetCoords(vout, "mouse-moved", &x, &y);
            var_SetCoords(vout, "mouse-clicked", x, y);
        }
    }

    if (m->b_double_click)
        var_ToggleBool(vout, "fullscreen");
    vout->p->mouse = *m;

    if (vout->p->mouse_event)
        vout->p->mouse_event(m, vout->p->mouse_opaque);
}
