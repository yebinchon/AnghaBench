
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fd; } ;
struct tmuxpeer {TYPE_1__ ibuf; int event; } ;


 int close (int ) ;
 int event_del (int *) ;
 int free (struct tmuxpeer*) ;
 int imsg_clear (TYPE_1__*) ;
 int log_debug (char*,struct tmuxpeer*) ;

void
proc_remove_peer(struct tmuxpeer *peer)
{
 log_debug("remove peer %p", peer);

 event_del(&peer->event);
 imsg_clear(&peer->ibuf);

 close(peer->ibuf.fd);
 free(peer);
}
