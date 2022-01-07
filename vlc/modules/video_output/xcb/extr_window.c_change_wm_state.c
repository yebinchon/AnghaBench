
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int* data32; } ;
struct TYPE_9__ {int format; TYPE_2__ data; int type; int window; int response_type; } ;
typedef TYPE_3__ xcb_client_message_event_t ;
typedef int xcb_atom_t ;
struct TYPE_7__ {int xid; } ;
struct TYPE_10__ {TYPE_1__ handle; TYPE_5__* sys; } ;
typedef TYPE_4__ vout_window_t ;
struct TYPE_11__ {int root; int conn; int wm_state; } ;
typedef TYPE_5__ vout_window_sys_t ;


 int NET_WM_STATE_ADD ;
 int NET_WM_STATE_REMOVE ;
 int XCB_CLIENT_MESSAGE ;
 int XCB_EVENT_MASK_SUBSTRUCTURE_NOTIFY ;
 int XCB_EVENT_MASK_SUBSTRUCTURE_REDIRECT ;
 int xcb_send_event (int ,int ,int ,int,char const*) ;

__attribute__((used)) static void change_wm_state (vout_window_t *wnd, bool on, xcb_atom_t state)
{
    vout_window_sys_t *sys = wnd->sys;

    xcb_client_message_event_t ev = {
         .response_type = XCB_CLIENT_MESSAGE,
         .format = 32,
         .window = wnd->handle.xid,
         .type = sys->wm_state,
    };

    ev.data.data32[0] = on ? NET_WM_STATE_ADD : NET_WM_STATE_REMOVE;
    ev.data.data32[1] = state;
    ev.data.data32[2] = 0;
    ev.data.data32[3] = 1;


    xcb_send_event (sys->conn, 0, sys->root,
                    XCB_EVENT_MASK_SUBSTRUCTURE_NOTIFY |
                    XCB_EVENT_MASK_SUBSTRUCTURE_REDIRECT,
                    (const char *)&ev);
}
