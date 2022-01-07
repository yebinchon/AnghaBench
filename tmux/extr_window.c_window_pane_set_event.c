
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window_pane {int event; int fd; } ;


 int EV_READ ;
 int EV_WRITE ;
 int READ_SIZE ;
 int bufferevent_enable (int ,int) ;
 int bufferevent_new (int ,int ,int *,int ,struct window_pane*) ;
 int bufferevent_setwatermark (int ,int,int ,int ) ;
 int setblocking (int ,int ) ;
 int window_pane_error_callback ;
 int window_pane_read_callback ;

void
window_pane_set_event(struct window_pane *wp)
{
 setblocking(wp->fd, 0);

 wp->event = bufferevent_new(wp->fd, window_pane_read_callback,
     ((void*)0), window_pane_error_callback, wp);

 bufferevent_setwatermark(wp->event, EV_READ, 0, READ_SIZE);
 bufferevent_enable(wp->event, EV_READ|EV_WRITE);
}
