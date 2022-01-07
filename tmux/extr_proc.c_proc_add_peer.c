
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmuxproc {int dummy; } ;
struct tmuxpeer {void (* dispatchcb ) (struct imsg*,void*) ;int event; int ibuf; void* arg; struct tmuxproc* parent; } ;


 int EV_READ ;
 int event_set (int *,int,int ,int ,struct tmuxpeer*) ;
 int imsg_init (int *,int) ;
 int log_debug (char*,struct tmuxpeer*,int,void*) ;
 int proc_event_cb ;
 int proc_update_event (struct tmuxpeer*) ;
 struct tmuxpeer* xcalloc (int,int) ;

struct tmuxpeer *
proc_add_peer(struct tmuxproc *tp, int fd,
    void (*dispatchcb)(struct imsg *, void *), void *arg)
{
 struct tmuxpeer *peer;

 peer = xcalloc(1, sizeof *peer);
 peer->parent = tp;

 peer->dispatchcb = dispatchcb;
 peer->arg = arg;

 imsg_init(&peer->ibuf, fd);
 event_set(&peer->event, fd, EV_READ, proc_event_cb, peer);

 log_debug("add peer %p: %d (%p)", peer, fd, arg);

 proc_update_event(peer);
 return (peer);
}
