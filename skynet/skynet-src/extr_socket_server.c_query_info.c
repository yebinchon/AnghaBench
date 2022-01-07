
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


union sockaddr_all {int s; } ;
typedef scalar_t__ uint64_t ;
typedef int u ;
struct socket_info {char* name; int wbuffer; int wtime; int rtime; int write; int read; scalar_t__ opaque; int id; int type; } ;
struct TYPE_4__ {int wtime; int rtime; int write; int read; } ;
struct TYPE_3__ {int udp_address; } ;
struct socket {int type; int wb_size; TYPE_2__ stat; scalar_t__ opaque; int id; TYPE_1__ p; int fd; int protocol; } ;
typedef int socklen_t ;


 int PROTOCOL_TCP ;
 int SOCKET_INFO_BIND ;
 int SOCKET_INFO_LISTEN ;
 int SOCKET_INFO_TCP ;
 int SOCKET_INFO_UDP ;



 int getname (union sockaddr_all*,char*,int) ;
 int getpeername (int ,int *,int*) ;
 int getsockname (int ,int *,int*) ;
 int udp_socket_address (struct socket*,int ,union sockaddr_all*) ;

__attribute__((used)) static int
query_info(struct socket *s, struct socket_info *si) {
 union sockaddr_all u;
 socklen_t slen = sizeof(u);
 switch (s->type) {
 case 130:
  si->type = SOCKET_INFO_BIND;
  si->name[0] = '\0';
  break;
 case 128:
  si->type = SOCKET_INFO_LISTEN;
  if (getsockname(s->fd, &u.s, &slen) == 0) {
   getname(&u, si->name, sizeof(si->name));
  }
  break;
 case 129:
  if (s->protocol == PROTOCOL_TCP) {
   si->type = SOCKET_INFO_TCP;
   if (getpeername(s->fd, &u.s, &slen) == 0) {
    getname(&u, si->name, sizeof(si->name));
   }
  } else {
   si->type = SOCKET_INFO_UDP;
   if (udp_socket_address(s, s->p.udp_address, &u)) {
    getname(&u, si->name, sizeof(si->name));
   }
  }
  break;
 default:
  return 0;
 }
 si->id = s->id;
 si->opaque = (uint64_t)s->opaque;
 si->read = s->stat.read;
 si->write = s->stat.write;
 si->rtime = s->stat.rtime;
 si->wtime = s->stat.wtime;
 si->wbuffer = s->wb_size;

 return 1;
}
