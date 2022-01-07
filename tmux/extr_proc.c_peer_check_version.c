
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tmuxpeer {int flags; } ;
struct TYPE_2__ {int peerid; scalar_t__ type; } ;
struct imsg {TYPE_1__ hdr; } ;


 scalar_t__ MSG_VERSION ;
 int PEER_BAD ;
 int PROTOCOL_VERSION ;
 int log_debug (char*,struct tmuxpeer*,int) ;
 int proc_send (struct tmuxpeer*,scalar_t__,int,int *,int ) ;

__attribute__((used)) static int
peer_check_version(struct tmuxpeer *peer, struct imsg *imsg)
{
 int version;

 version = imsg->hdr.peerid & 0xff;
 if (imsg->hdr.type != MSG_VERSION && version != PROTOCOL_VERSION) {
  log_debug("peer %p bad version %d", peer, version);

  proc_send(peer, MSG_VERSION, -1, ((void*)0), 0);
  peer->flags |= PEER_BAD;

  return (-1);
 }
 return (0);
}
