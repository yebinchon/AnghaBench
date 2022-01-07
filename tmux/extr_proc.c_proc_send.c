
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imsgbuf {int dummy; } ;
struct tmuxpeer {int flags; struct imsgbuf ibuf; } ;
typedef enum msgtype { ____Placeholder_msgtype } msgtype ;


 int PEER_BAD ;
 int PROTOCOL_VERSION ;
 int imsg_compose (struct imsgbuf*,int,int ,int,int,void*,size_t) ;
 int log_debug (char*,int,struct tmuxpeer*,size_t) ;
 int proc_update_event (struct tmuxpeer*) ;

int
proc_send(struct tmuxpeer *peer, enum msgtype type, int fd, const void *buf,
    size_t len)
{
 struct imsgbuf *ibuf = &peer->ibuf;
 void *vp = (void *)buf;
 int retval;

 if (peer->flags & PEER_BAD)
  return (-1);
 log_debug("sending message %d to peer %p (%zu bytes)", type, peer, len);

 retval = imsg_compose(ibuf, type, PROTOCOL_VERSION, -1, fd, vp, len);
 if (retval != 1)
  return (-1);
 proc_update_event(peer);
 return (0);
}
