
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_ev {scalar_t__ fd; int refcnt; scalar_t__ bev; } ;
struct bufferevent {int dummy; } ;


 short BEV_EVENT_EOF ;
 short BEV_EVENT_ERROR ;
 int E_WARNING ;
 int assert (int) ;
 int bufferevent_free (struct bufferevent*) ;
 int close (scalar_t__) ;
 int free (struct in_ev*) ;
 int vlogprintf (int ,char*) ;

void event_incoming (struct bufferevent *bev, short what, void *_arg) {
  struct in_ev *ev = _arg;
  if (what & (BEV_EVENT_EOF | BEV_EVENT_ERROR)) {
    vlogprintf (E_WARNING, "Closing incoming connection\n");
    assert (ev->fd >= 0);
    close (ev->fd);
    bufferevent_free (bev);
    ev->bev = 0;
    if (!--ev->refcnt) { free (ev); }
  }
}
