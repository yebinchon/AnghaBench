
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ atom; } ;
typedef TYPE_1__ xcb_property_notify_event_t ;
struct TYPE_9__ {int response_type; } ;
typedef TYPE_2__ xcb_generic_event_t ;
typedef int xcb_connection_t ;
struct pollfd {int fd; int events; } ;
struct TYPE_10__ {TYPE_4__* p_sys; } ;
typedef TYPE_3__ services_discovery_t ;
struct TYPE_11__ {scalar_t__ net_client_list; int * conn; } ;
typedef TYPE_4__ services_discovery_sys_t ;


 int POLLIN ;
 int UpdateApps (TYPE_3__*) ;
 int XCB_PROPERTY_NOTIFY ;
 int free (TYPE_2__*) ;
 int poll (struct pollfd*,int,int) ;
 int vlc_restorecancel (int) ;
 int vlc_savecancel () ;
 int xcb_connection_has_error (int *) ;
 int xcb_get_file_descriptor (int *) ;
 TYPE_2__* xcb_poll_for_event (int *) ;

__attribute__((used)) static void *Run (void *data)
{
    services_discovery_t *sd = data;
    services_discovery_sys_t *p_sys = sd->p_sys;
    xcb_connection_t *conn = p_sys->conn;
    int fd = xcb_get_file_descriptor (conn);
    if (fd == -1)
        return ((void*)0);

    while (!xcb_connection_has_error (conn))
    {
        xcb_generic_event_t *ev;
        struct pollfd ufd = { .fd = fd, .events = POLLIN, };

        poll (&ufd, 1, -1);

        int canc = vlc_savecancel ();
        while ((ev = xcb_poll_for_event (conn)) != ((void*)0))
        {
            if ((ev->response_type & 0x7F) == XCB_PROPERTY_NOTIFY)
            {
                 const xcb_property_notify_event_t *pn =
                     (xcb_property_notify_event_t *)ev;
                 if (pn->atom == p_sys->net_client_list)
                     UpdateApps (sd);
            }
            free (ev);
        }
        vlc_restorecancel (canc);
    }
    return ((void*)0);
}
