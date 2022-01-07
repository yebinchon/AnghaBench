
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int xcb_window_t ;
struct TYPE_5__ {scalar_t__ status; } ;
typedef TYPE_1__ xcb_grab_pointer_reply_t ;
typedef int xcb_grab_pointer_cookie_t ;
struct timespec {int tv_nsec; int tv_sec; } ;
struct TYPE_6__ {int connection; } ;


 int EXIT_FAILURE ;
 scalar_t__ TRUE ;
 int XCB_CURRENT_TIME ;
 int XCB_EVENT_MASK_BUTTON_RELEASE ;
 int XCB_GRAB_MODE_ASYNC ;
 scalar_t__ XCB_GRAB_STATUS_SUCCESS ;
 int XCB_NONE ;
 int exit (int ) ;
 int free (TYPE_1__*) ;
 int g_warning (char*) ;
 int nanosleep (struct timespec*,int *) ;
 TYPE_3__* xcb ;
 scalar_t__ xcb_connection_has_error (int ) ;
 int xcb_grab_pointer (int ,int,int ,int ,int ,int ,int ,int ,int ) ;
 TYPE_1__* xcb_grab_pointer_reply (int ,int ,int *) ;

__attribute__((used)) static int take_pointer ( xcb_window_t w, int iters )
{
    int i = 0;
    while ( TRUE ) {
        if ( xcb_connection_has_error ( xcb->connection ) ) {
            g_warning ( "Connection has error" );
            exit ( EXIT_FAILURE );
        }
        xcb_grab_pointer_cookie_t cc = xcb_grab_pointer ( xcb->connection, 1, w, XCB_EVENT_MASK_BUTTON_RELEASE,
                                                          XCB_GRAB_MODE_ASYNC, XCB_GRAB_MODE_ASYNC, w, XCB_NONE, XCB_CURRENT_TIME );
        xcb_grab_pointer_reply_t *r = xcb_grab_pointer_reply ( xcb->connection, cc, ((void*)0) );
        if ( r ) {
            if ( r->status == XCB_GRAB_STATUS_SUCCESS ) {
                free ( r );
                return 1;
            }
            free ( r );
        }
        if ( ( ++i ) > iters ) {
            break;
        }
        struct timespec del = {
             .tv_sec = 0,
             .tv_nsec = 1000000
        };
        nanosleep ( &del, ((void*)0) );
    }
    return 0;
}
