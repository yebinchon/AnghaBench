
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmuxpeer {int flags; } ;


 int PEER_BAD ;

void
proc_kill_peer(struct tmuxpeer *peer)
{
 peer->flags |= PEER_BAD;
}
