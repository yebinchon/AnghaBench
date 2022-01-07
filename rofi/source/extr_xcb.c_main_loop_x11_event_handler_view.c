
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef int xcb_selection_notify_event_t ;
struct TYPE_12__ {int event_y; int event_x; } ;
typedef TYPE_1__ xcb_motion_notify_event_t ;
struct TYPE_13__ {int* keys; } ;
typedef TYPE_2__ xcb_keymap_notify_event_t ;
struct TYPE_14__ {int detail; int time; } ;
typedef TYPE_3__ xcb_key_release_event_t ;
struct TYPE_15__ {int detail; int state; int time; } ;
typedef TYPE_4__ xcb_key_press_event_t ;
struct TYPE_16__ {int response_type; } ;
typedef TYPE_5__ xcb_generic_event_t ;
typedef int xcb_configure_notify_event_t ;
struct TYPE_17__ {int event; int time; int detail; } ;
typedef TYPE_6__ xcb_button_release_event_t ;
struct TYPE_18__ {int detail; int time; int event_y; int event_x; } ;
typedef TYPE_7__ xcb_button_press_event_t ;
typedef int gint8 ;
typedef int gint32 ;
typedef int gchar ;
struct TYPE_19__ {int bindings_seat; int last_timestamp; int mouse_seen; } ;
struct TYPE_11__ {int click_to_exit; } ;
typedef int RofiViewState ;
typedef int NkBindingsScrollAxis ;
typedef int NkBindingsMouseButton ;


 int FALSE ;
 int NK_BINDINGS_BUTTON_STATE_PRESS ;
 int NK_BINDINGS_BUTTON_STATE_RELEASE ;
 int NK_BINDINGS_KEY_STATE_PRESS ;
 int NK_BINDINGS_KEY_STATE_PRESSED ;
 int NK_BINDINGS_KEY_STATE_RELEASE ;
 int TRUE ;
 TYPE_10__ config ;
 int nk_bindings_seat_handle_button (int ,int *,int ,int ,int ) ;
 int nk_bindings_seat_handle_key (int ,int *,int ,int ) ;
 int * nk_bindings_seat_handle_key_with_modmask (int ,int *,int ,int ,int ) ;
 int nk_bindings_seat_handle_scroll (int ,int *,int ,int) ;
 int rofi_view_frame_callback () ;
 int * rofi_view_get_active () ;
 int rofi_view_handle_mouse_motion (int *,int ,int ) ;
 int rofi_view_handle_text (int *,int *) ;
 int rofi_view_maybe_update (int *) ;
 int rofi_view_paste (int *,int *) ;
 int rofi_view_temp_click_to_exit (int *,int ) ;
 int rofi_view_temp_configure_notify (int *,int *) ;
 int x11_button_to_nk_bindings_button (int ,int *) ;
 int x11_button_to_nk_bindings_scroll (int ,int *,int*) ;
 TYPE_8__* xcb ;

__attribute__((used)) static void main_loop_x11_event_handler_view ( xcb_generic_event_t *event )
{
    RofiViewState *state = rofi_view_get_active ();
    if ( state == ((void*)0) ) {
        return;
    }

    switch ( event->response_type & ~0x80 )
    {
    case 133:
        rofi_view_frame_callback ();
        break;
    case 134:
    {
        xcb_configure_notify_event_t *xce = (xcb_configure_notify_event_t *) event;
        rofi_view_temp_configure_notify ( state, xce );
        break;
    }
    case 129:
    {
        if ( config.click_to_exit == TRUE ) {
            xcb->mouse_seen = TRUE;
        }
        xcb_motion_notify_event_t *xme = (xcb_motion_notify_event_t *) event;
        rofi_view_handle_mouse_motion ( state, xme->event_x, xme->event_y );
        break;
    }
    case 136:
    {
        xcb_button_press_event_t *bpe = (xcb_button_press_event_t *) event;
        NkBindingsMouseButton button;
        NkBindingsScrollAxis axis;
        gint32 steps;

        xcb->last_timestamp = bpe->time;
        rofi_view_handle_mouse_motion ( state, bpe->event_x, bpe->event_y );
        if ( x11_button_to_nk_bindings_button ( bpe->detail, &button ) ) {
            nk_bindings_seat_handle_button ( xcb->bindings_seat, ((void*)0), button, NK_BINDINGS_BUTTON_STATE_PRESS, bpe->time );
        }
        else if ( x11_button_to_nk_bindings_scroll ( bpe->detail, &axis, &steps ) ) {
            nk_bindings_seat_handle_scroll ( xcb->bindings_seat, ((void*)0), axis, steps );
        }
        break;
    }
    case 135:
    {
        xcb_button_release_event_t *bre = (xcb_button_release_event_t *) event;
        NkBindingsMouseButton button;

        xcb->last_timestamp = bre->time;
        if ( x11_button_to_nk_bindings_button ( bre->detail, &button ) ) {
            nk_bindings_seat_handle_button ( xcb->bindings_seat, ((void*)0), button, NK_BINDINGS_BUTTON_STATE_RELEASE, bre->time );
        }
        if ( config.click_to_exit == TRUE ) {
            if ( !xcb->mouse_seen ) {
                rofi_view_temp_click_to_exit ( state, bre->event );
            }
            xcb->mouse_seen = FALSE;
        }
        break;
    }

    case 128:
        rofi_view_paste ( state, (xcb_selection_notify_event_t *) event );
        break;
    case 132:
    {
        xcb_keymap_notify_event_t *kne = (xcb_keymap_notify_event_t *) event;
        for ( gint32 by = 0; by < 31; ++by ) {
            for ( gint8 bi = 0; bi < 7; ++bi ) {
                if ( kne->keys[by] & ( 1 << bi ) ) {

                    nk_bindings_seat_handle_key ( xcb->bindings_seat, ((void*)0), ( 8 * by + bi ) + 8, NK_BINDINGS_KEY_STATE_PRESSED );
                }
            }
        }
        break;
    }
    case 131:
    {
        xcb_key_press_event_t *xkpe = (xcb_key_press_event_t *) event;
        gchar *text;

        xcb->last_timestamp = xkpe->time;
        text = nk_bindings_seat_handle_key_with_modmask ( xcb->bindings_seat, ((void*)0), xkpe->state, xkpe->detail, NK_BINDINGS_KEY_STATE_PRESS );
        if ( text != ((void*)0) ) {
            rofi_view_handle_text ( state, text );
        }
        break;
    }
    case 130:
    {
        xcb_key_release_event_t *xkre = (xcb_key_release_event_t *) event;
        xcb->last_timestamp = xkre->time;
        nk_bindings_seat_handle_key ( xcb->bindings_seat, ((void*)0), xkre->detail, NK_BINDINGS_KEY_STATE_RELEASE );
        break;
    }
    default:
        break;
    }
    rofi_view_maybe_update ( state );
}
