
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket_server {TYPE_1__* slot; } ;
struct TYPE_4__ {int udp_address; } ;
struct socket {TYPE_2__ p; int type; } ;
struct request_udp {int id; scalar_t__ family; int fd; int opaque; } ;
struct TYPE_3__ {int type; } ;


 scalar_t__ AF_INET6 ;
 size_t HASH_ID (int) ;
 int PROTOCOL_UDP ;
 int PROTOCOL_UDPv6 ;
 int SOCKET_TYPE_CONNECTED ;
 int SOCKET_TYPE_INVALID ;
 int close (int ) ;
 int memset (int ,int ,int) ;
 struct socket* new_fd (struct socket_server*,int,int ,int,int ,int) ;

__attribute__((used)) static void
add_udp_socket(struct socket_server *ss, struct request_udp *udp) {
 int id = udp->id;
 int protocol;
 if (udp->family == AF_INET6) {
  protocol = PROTOCOL_UDPv6;
 } else {
  protocol = PROTOCOL_UDP;
 }
 struct socket *ns = new_fd(ss, id, udp->fd, protocol, udp->opaque, 1);
 if (ns == ((void*)0)) {
  close(udp->fd);
  ss->slot[HASH_ID(id)].type = SOCKET_TYPE_INVALID;
  return;
 }
 ns->type = SOCKET_TYPE_CONNECTED;
 memset(ns->p.udp_address, 0, sizeof(ns->p.udp_address));
}
