
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


union sockaddr_all {int s; } ;
typedef int uint8_t ;
struct socket_udp_address {int dummy; } ;
struct socket_server {struct socket* slot; } ;
struct socket_sendbuffer {int id; scalar_t__ buffer; } ;
struct socket_lock {int dummy; } ;
struct socket {int id; scalar_t__ type; int fd; } ;
struct send_object {int (* free_func ) (void*) ;int sz; int buffer; } ;
struct TYPE_4__ {int id; int sz; int buffer; } ;
struct TYPE_5__ {int address; TYPE_1__ send; } ;
struct TYPE_6__ {TYPE_2__ send_udp; } ;
struct request_package {TYPE_3__ u; } ;
typedef scalar_t__ socklen_t ;


 size_t HASH_ID (int) ;


 scalar_t__ SOCKET_TYPE_INVALID ;
 scalar_t__ can_direct_write (struct socket*,int) ;
 int clone_buffer (struct socket_sendbuffer*,int *) ;
 int free_buffer (struct socket_server*,struct socket_sendbuffer*) ;
 int memcpy (int ,int const*,int) ;
 int send_object_init_from_sendbuffer (struct socket_server*,struct send_object*,struct socket_sendbuffer*) ;
 int send_request (struct socket_server*,struct request_package*,char,int) ;
 int sendto (int ,int ,int ,int ,int *,scalar_t__) ;
 int socket_lock_init (struct socket*,struct socket_lock*) ;
 scalar_t__ socket_trylock (struct socket_lock*) ;
 int socket_unlock (struct socket_lock*) ;
 int stat_write (struct socket_server*,struct socket*,int) ;
 int stub1 (void*) ;
 int stub2 (void*) ;
 scalar_t__ udp_socket_address (struct socket*,int const*,union sockaddr_all*) ;

int
socket_server_udp_send(struct socket_server *ss, const struct socket_udp_address *addr, struct socket_sendbuffer *buf) {
 int id = buf->id;
 struct socket * s = &ss->slot[HASH_ID(id)];
 if (s->id != id || s->type == SOCKET_TYPE_INVALID) {
  free_buffer(ss, buf);
  return -1;
 }

 const uint8_t *udp_address = (const uint8_t *)addr;
 int addrsz;
 switch (udp_address[0]) {
 case 129:
  addrsz = 1+2+4;
  break;
 case 128:
  addrsz = 1+2+16;
  break;
 default:
  free_buffer(ss, buf);
  return -1;
 }

 struct socket_lock l;
 socket_lock_init(s, &l);

 if (can_direct_write(s,id) && socket_trylock(&l)) {

  if (can_direct_write(s,id)) {

   struct send_object so;
   send_object_init_from_sendbuffer(ss, &so, buf);
   union sockaddr_all sa;
   socklen_t sasz = udp_socket_address(s, udp_address, &sa);
   if (sasz == 0) {
    socket_unlock(&l);
    so.free_func((void *)buf->buffer);
    return -1;
   }
   int n = sendto(s->fd, so.buffer, so.sz, 0, &sa.s, sasz);
   if (n >= 0) {

    stat_write(ss,s,n);
    socket_unlock(&l);
    so.free_func((void *)buf->buffer);
    return 0;
   }
  }
  socket_unlock(&l);

 }

 struct request_package request;
 request.u.send_udp.send.id = id;
 request.u.send_udp.send.buffer = clone_buffer(buf, &request.u.send_udp.send.sz);

 memcpy(request.u.send_udp.address, udp_address, addrsz);

 send_request(ss, &request, 'A', sizeof(request.u.send_udp.send)+addrsz);
 return 0;
}
