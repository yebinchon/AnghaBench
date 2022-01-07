
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xcb_generic_event_t ;
typedef int xcb_connection_t ;
typedef int vout_display_t ;


 int ProcessEvent (int *,int *) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int msg_Err (int *,char*) ;
 scalar_t__ xcb_connection_has_error (int *) ;
 int * xcb_poll_for_event (int *) ;

int vlc_xcb_Manage(vout_display_t *vd, xcb_connection_t *conn)
{
    xcb_generic_event_t *ev;

    while ((ev = xcb_poll_for_event (conn)) != ((void*)0))
        ProcessEvent(vd, ev);

    if (xcb_connection_has_error (conn))
    {
        msg_Err (vd, "X server failure");
        return VLC_EGENERIC;
    }

    return VLC_SUCCESS;
}
