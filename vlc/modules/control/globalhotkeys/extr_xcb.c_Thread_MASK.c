#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ detail; scalar_t__ state; } ;
typedef  TYPE_1__ xcb_key_press_event_t ;
struct TYPE_10__ {int response_type; } ;
typedef  TYPE_2__ xcb_generic_event_t ;
typedef  int /*<<< orphan*/  xcb_connection_t ;
struct pollfd {int fd; int /*<<< orphan*/  events; } ;
struct TYPE_11__ {TYPE_4__* p_sys; } ;
typedef  TYPE_3__ intf_thread_t ;
struct TYPE_12__ {int i_map; TYPE_5__* p_map; int /*<<< orphan*/ * p_connection; } ;
typedef  TYPE_4__ intf_sys_t ;
struct TYPE_13__ {scalar_t__* p_keys; scalar_t__ i_modifier; int /*<<< orphan*/  i_vlc; } ;
typedef  TYPE_5__ hotkey_mapping_t ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  POLLIN ; 
 int XCB_KEY_PRESS ; 
 scalar_t__ XCB_NO_SYMBOL ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (struct pollfd*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void *FUNC9( void *p_data )
{
    intf_thread_t *p_intf = p_data;
    intf_sys_t *p_sys = p_intf->p_sys;
    xcb_connection_t *p_connection = p_sys->p_connection;

    int canc = FUNC5();

    /* */
    FUNC6( p_connection );

    /* */
    int fd = FUNC7( p_connection );
    for( ;; )
    {
        /* Wait for x11 event */
        FUNC4( canc );
        struct pollfd fds = { .fd = fd, .events = POLLIN, };
        if( FUNC1( &fds, 1, -1 ) < 0 )
        {
            if( errno != EINTR )
                break;
            canc = FUNC5();
            continue;
        }
        canc = FUNC5();

        xcb_generic_event_t *p_event;
        while( ( p_event = FUNC8( p_connection ) ) )
        {
            if( ( p_event->response_type & 0x7f ) != XCB_KEY_PRESS )
            {
                FUNC0( p_event );
                continue;
            }

            xcb_key_press_event_t *e = (xcb_key_press_event_t *)p_event;

            for( int i = 0; i < p_sys->i_map; i++ )
            {
                hotkey_mapping_t *p_map = &p_sys->p_map[i];

                for( int j = 0; p_map->p_keys[j] != XCB_NO_SYMBOL; j++ )
                    if( p_map->p_keys[j] == e->detail &&
                        p_map->i_modifier == e->state )
                    {
                        FUNC2( FUNC3(p_intf),
                                        "global-key-pressed", p_map->i_vlc );
                        goto done;
                    }
            }
        done:
            FUNC0( p_event );
        }
    }

    return NULL;
}