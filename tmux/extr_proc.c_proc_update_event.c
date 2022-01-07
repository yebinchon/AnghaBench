
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ queued; } ;
struct TYPE_4__ {int fd; TYPE_1__ w; } ;
struct tmuxpeer {int event; TYPE_2__ ibuf; } ;


 short EV_READ ;
 short EV_WRITE ;
 int event_add (int *,int *) ;
 int event_del (int *) ;
 int event_set (int *,int ,short,int ,struct tmuxpeer*) ;
 int proc_event_cb ;

__attribute__((used)) static void
proc_update_event(struct tmuxpeer *peer)
{
 short events;

 event_del(&peer->event);

 events = EV_READ;
 if (peer->ibuf.w.queued > 0)
  events |= EV_WRITE;
 event_set(&peer->event, peer->ibuf.fd, events, proc_event_cb, peer);

 event_add(&peer->event, ((void*)0));
}
