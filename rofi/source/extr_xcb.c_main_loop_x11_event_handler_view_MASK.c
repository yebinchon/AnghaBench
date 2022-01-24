#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xcb_selection_notify_event_t ;
struct TYPE_12__ {int /*<<< orphan*/  event_y; int /*<<< orphan*/  event_x; } ;
typedef  TYPE_1__ xcb_motion_notify_event_t ;
struct TYPE_13__ {int* keys; } ;
typedef  TYPE_2__ xcb_keymap_notify_event_t ;
struct TYPE_14__ {int /*<<< orphan*/  detail; int /*<<< orphan*/  time; } ;
typedef  TYPE_3__ xcb_key_release_event_t ;
struct TYPE_15__ {int /*<<< orphan*/  detail; int /*<<< orphan*/  state; int /*<<< orphan*/  time; } ;
typedef  TYPE_4__ xcb_key_press_event_t ;
struct TYPE_16__ {int response_type; } ;
typedef  TYPE_5__ xcb_generic_event_t ;
typedef  int /*<<< orphan*/  xcb_configure_notify_event_t ;
struct TYPE_17__ {int /*<<< orphan*/  event; int /*<<< orphan*/  time; int /*<<< orphan*/  detail; } ;
typedef  TYPE_6__ xcb_button_release_event_t ;
struct TYPE_18__ {int /*<<< orphan*/  detail; int /*<<< orphan*/  time; int /*<<< orphan*/  event_y; int /*<<< orphan*/  event_x; } ;
typedef  TYPE_7__ xcb_button_press_event_t ;
typedef  int gint8 ;
typedef  int gint32 ;
typedef  int /*<<< orphan*/  gchar ;
struct TYPE_19__ {int /*<<< orphan*/  bindings_seat; int /*<<< orphan*/  last_timestamp; int /*<<< orphan*/  mouse_seen; } ;
struct TYPE_11__ {int /*<<< orphan*/  click_to_exit; } ;
typedef  int /*<<< orphan*/  RofiViewState ;
typedef  int /*<<< orphan*/  NkBindingsScrollAxis ;
typedef  int /*<<< orphan*/  NkBindingsMouseButton ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  NK_BINDINGS_BUTTON_STATE_PRESS ; 
 int /*<<< orphan*/  NK_BINDINGS_BUTTON_STATE_RELEASE ; 
 int /*<<< orphan*/  NK_BINDINGS_KEY_STATE_PRESS ; 
 int /*<<< orphan*/  NK_BINDINGS_KEY_STATE_PRESSED ; 
 int /*<<< orphan*/  NK_BINDINGS_KEY_STATE_RELEASE ; 
 int /*<<< orphan*/  TRUE ; 
#define  XCB_BUTTON_PRESS 136 
#define  XCB_BUTTON_RELEASE 135 
#define  XCB_CONFIGURE_NOTIFY 134 
#define  XCB_EXPOSE 133 
#define  XCB_KEYMAP_NOTIFY 132 
#define  XCB_KEY_PRESS 131 
#define  XCB_KEY_RELEASE 130 
#define  XCB_MOTION_NOTIFY 129 
#define  XCB_SELECTION_NOTIFY 128 
 TYPE_10__ config ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 TYPE_8__* xcb ; 

__attribute__((used)) static void FUNC14 ( xcb_generic_event_t *event )
{
    RofiViewState *state = FUNC5 ();
    if ( state == NULL ) {
        return;
    }

    switch ( event->response_type & ~0x80 )
    {
    case XCB_EXPOSE:
        FUNC4 ();
        break;
    case XCB_CONFIGURE_NOTIFY:
    {
        xcb_configure_notify_event_t *xce = (xcb_configure_notify_event_t *) event;
        FUNC11 ( state, xce );
        break;
    }
    case XCB_MOTION_NOTIFY:
    {
        if ( config.click_to_exit == TRUE ) {
            xcb->mouse_seen = TRUE;
        }
        xcb_motion_notify_event_t *xme = (xcb_motion_notify_event_t *) event;
        FUNC6 ( state, xme->event_x, xme->event_y );
        break;
    }
    case XCB_BUTTON_PRESS:
    {
        xcb_button_press_event_t *bpe = (xcb_button_press_event_t *) event;
        NkBindingsMouseButton    button;
        NkBindingsScrollAxis     axis;
        gint32                   steps;

        xcb->last_timestamp = bpe->time;
        FUNC6 ( state, bpe->event_x, bpe->event_y );
        if ( FUNC12 ( bpe->detail, &button ) ) {
            FUNC0 ( xcb->bindings_seat, NULL, button, NK_BINDINGS_BUTTON_STATE_PRESS, bpe->time );
        }
        else if ( FUNC13 ( bpe->detail, &axis, &steps ) ) {
            FUNC3 ( xcb->bindings_seat, NULL, axis, steps );
        }
        break;
    }
    case XCB_BUTTON_RELEASE:
    {
        xcb_button_release_event_t *bre = (xcb_button_release_event_t *) event;
        NkBindingsMouseButton      button;

        xcb->last_timestamp = bre->time;
        if ( FUNC12 ( bre->detail, &button ) ) {
            FUNC0 ( xcb->bindings_seat, NULL, button, NK_BINDINGS_BUTTON_STATE_RELEASE, bre->time );
        }
        if ( config.click_to_exit == TRUE ) {
            if ( !xcb->mouse_seen ) {
                FUNC10 ( state, bre->event );
            }
            xcb->mouse_seen = FALSE;
        }
        break;
    }
    // Paste event.
    case XCB_SELECTION_NOTIFY:
        FUNC9 ( state, (xcb_selection_notify_event_t *) event );
        break;
    case XCB_KEYMAP_NOTIFY:
    {
        xcb_keymap_notify_event_t *kne = (xcb_keymap_notify_event_t *) event;
        for ( gint32 by = 0; by < 31; ++by ) {
            for ( gint8 bi = 0; bi < 7; ++bi ) {
                if ( kne->keys[by] & ( 1 << bi ) ) {
                    // X11 keycodes starts at 8
                    FUNC1 ( xcb->bindings_seat, NULL, ( 8 * by + bi ) + 8, NK_BINDINGS_KEY_STATE_PRESSED );
                }
            }
        }
        break;
    }
    case XCB_KEY_PRESS:
    {
        xcb_key_press_event_t *xkpe = (xcb_key_press_event_t *) event;
        gchar                 *text;

        xcb->last_timestamp = xkpe->time;
        text                = FUNC2 ( xcb->bindings_seat, NULL, xkpe->state, xkpe->detail, NK_BINDINGS_KEY_STATE_PRESS );
        if ( text != NULL ) {
            FUNC7 ( state, text );
        }
        break;
    }
    case XCB_KEY_RELEASE:
    {
        xcb_key_release_event_t *xkre = (xcb_key_release_event_t *) event;
        xcb->last_timestamp = xkre->time;
        FUNC1 ( xcb->bindings_seat, NULL, xkre->detail, NK_BINDINGS_KEY_STATE_RELEASE );
        break;
    }
    default:
        break;
    }
    FUNC8 ( state );
}