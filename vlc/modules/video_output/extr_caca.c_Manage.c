
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* sys; } ;
typedef TYPE_1__ vout_display_t ;
struct TYPE_8__ {scalar_t__ cursor_deadline; scalar_t__ cursor_timeout; int window; int dp; } ;
typedef TYPE_2__ vout_display_sys_t ;
struct caca_event {int dummy; } ;
struct TYPE_10__ {int caca; int vlc; } ;
struct TYPE_9__ {int caca; int vlc; } ;


 int CACA_EVENT_ANY ;






 scalar_t__ INVALID_DEADLINE ;
 int VoutDisplayEventKey (TYPE_2__*,int const) ;
 scalar_t__ caca_get_event (int ,int ,struct caca_event*,int ) ;
 int caca_get_event_key_ch (struct caca_event*) ;
 int caca_get_event_mouse_button (struct caca_event*) ;
 int caca_get_event_mouse_x (struct caca_event*) ;
 int caca_get_event_mouse_y (struct caca_event*) ;
 int const caca_get_event_type (struct caca_event*) ;
 int caca_set_mouse (int ,int) ;
 TYPE_4__* keys ;
 TYPE_3__* mouses ;
 scalar_t__ vlc_tick_now () ;
 int vout_window_ReportClose (int ) ;
 int vout_window_ReportMouseMoved (int ,int ,int ) ;
 int vout_window_ReportMousePressed (int ,int ) ;
 int vout_window_ReportMouseReleased (int ,int ) ;

__attribute__((used)) static void Manage(vout_display_t *vd)
{
    vout_display_sys_t *sys = vd->sys;

    if (sys->cursor_deadline != INVALID_DEADLINE && sys->cursor_deadline < vlc_tick_now()) {
        caca_set_mouse(sys->dp, 0);
        sys->cursor_deadline = INVALID_DEADLINE;
    }

    struct caca_event ev;
    while (caca_get_event(sys->dp, CACA_EVENT_ANY, &ev, 0) > 0) {
        switch (caca_get_event_type(&ev)) {
        case 133: {
            const int caca = caca_get_event_key_ch(&ev);

            for (int i = 0; keys[i].caca != -1; i++) {
                if (keys[i].caca == caca) {
                    const int vlc = keys[i].vlc;

                    if (vlc >= 0)
                        VoutDisplayEventKey(sys, vlc);
                    return;
                }
            }
            if (caca >= 0x20 && caca <= 0x7f) {
                VoutDisplayEventKey(sys, caca);
                return;
            }
            break;
        }
        case 128:
            break;
        case 132:
            caca_set_mouse(sys->dp, 1);
            sys->cursor_deadline = vlc_tick_now() + sys->cursor_timeout;
            vout_window_ReportMouseMoved(sys->window,
                                         caca_get_event_mouse_x(&ev),
                                         caca_get_event_mouse_y(&ev));
            break;
        case 131:
        case 130: {
            caca_set_mouse(sys->dp, 1);
            sys->cursor_deadline = vlc_tick_now() + sys->cursor_timeout;

            const int caca = caca_get_event_mouse_button(&ev);
            for (int i = 0; mouses[i].caca != -1; i++) {
                if (mouses[i].caca == caca) {
                    if (caca_get_event_type(&ev) == 131)
                        vout_window_ReportMousePressed(sys->window,
                                                       mouses[i].vlc);
                    else
                        vout_window_ReportMouseReleased(sys->window,
                                                        mouses[i].vlc);
                    return;
                }
            }
            break;
        }
        case 129:
            vout_window_ReportClose(sys->window);
            break;
        default:
            break;
        }
    }
}
