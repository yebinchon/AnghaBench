
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union sockaddr_all {int s; } ;
typedef int uint8_t ;
struct socket_server {int event_fd; struct socket* slot; } ;
struct socket_message {int id; int ud; int * data; int opaque; } ;
struct TYPE_2__ {int * udp_address; } ;
struct socket {scalar_t__ type; int id; scalar_t__ protocol; int wb_size; int warn_size; int opaque; TYPE_1__ p; int fd; } ;
struct send_object {int sz; int (* free_func ) (void*) ;int buffer; } ;
struct request_send {int id; scalar_t__ buffer; int sz; } ;
typedef scalar_t__ socklen_t ;


 size_t HASH_ID (int) ;
 int PRIORITY_LOW ;
 scalar_t__ PROTOCOL_TCP ;
 scalar_t__ SOCKET_TYPE_CONNECTED ;
 scalar_t__ SOCKET_TYPE_HALFCLOSE ;
 scalar_t__ SOCKET_TYPE_INVALID ;
 scalar_t__ SOCKET_TYPE_LISTEN ;
 scalar_t__ SOCKET_TYPE_PACCEPT ;
 scalar_t__ SOCKET_TYPE_PLISTEN ;
 int SOCKET_WARNING ;
 int WARNING_SIZE ;
 int append_sendbuffer (struct socket_server*,struct socket*,struct request_send*) ;
 int append_sendbuffer_low (struct socket_server*,struct socket*,struct request_send*) ;
 int append_sendbuffer_udp (struct socket_server*,struct socket*,int,struct request_send*,int const*) ;
 int fprintf (int ,char*,int) ;
 scalar_t__ send_buffer_empty (struct socket*) ;
 int send_object_init (struct socket_server*,struct send_object*,scalar_t__,int ) ;
 int sendto (int ,int ,int,int ,int *,scalar_t__) ;
 int sp_write (int ,int ,struct socket*,int) ;
 int stat_write (struct socket_server*,struct socket*,int) ;
 int stderr ;
 int stub1 (void*) ;
 int stub2 (void*) ;
 int stub3 (void*) ;
 int stub4 (void*) ;
 scalar_t__ udp_socket_address (struct socket*,int const*,union sockaddr_all*) ;

__attribute__((used)) static int
send_socket(struct socket_server *ss, struct request_send * request, struct socket_message *result, int priority, const uint8_t *udp_address) {
 int id = request->id;
 struct socket * s = &ss->slot[HASH_ID(id)];
 struct send_object so;
 send_object_init(ss, &so, request->buffer, request->sz);
 if (s->type == SOCKET_TYPE_INVALID || s->id != id
  || s->type == SOCKET_TYPE_HALFCLOSE
  || s->type == SOCKET_TYPE_PACCEPT) {
  so.free_func((void *)request->buffer);
  return -1;
 }
 if (s->type == SOCKET_TYPE_PLISTEN || s->type == SOCKET_TYPE_LISTEN) {
  fprintf(stderr, "socket-server: write to listen fd %d.\n", id);
  so.free_func((void *)request->buffer);
  return -1;
 }
 if (send_buffer_empty(s) && s->type == SOCKET_TYPE_CONNECTED) {
  if (s->protocol == PROTOCOL_TCP) {
   append_sendbuffer(ss, s, request);
  } else {

   if (udp_address == ((void*)0)) {
    udp_address = s->p.udp_address;
   }
   union sockaddr_all sa;
   socklen_t sasz = udp_socket_address(s, udp_address, &sa);
   if (sasz == 0) {

    fprintf(stderr, "socket-server: udp socket (%d) type mistach.\n", id);
    so.free_func((void *)request->buffer);
    return -1;
   }
   int n = sendto(s->fd, so.buffer, so.sz, 0, &sa.s, sasz);
   if (n != so.sz) {
    append_sendbuffer_udp(ss,s,priority,request,udp_address);
   } else {
    stat_write(ss,s,n);
    so.free_func((void *)request->buffer);
    return -1;
   }
  }
  sp_write(ss->event_fd, s->fd, s, 1);
 } else {
  if (s->protocol == PROTOCOL_TCP) {
   if (priority == PRIORITY_LOW) {
    append_sendbuffer_low(ss, s, request);
   } else {
    append_sendbuffer(ss, s, request);
   }
  } else {
   if (udp_address == ((void*)0)) {
    udp_address = s->p.udp_address;
   }
   append_sendbuffer_udp(ss,s,priority,request,udp_address);
  }
 }
 if (s->wb_size >= WARNING_SIZE && s->wb_size >= s->warn_size) {
  s->warn_size = s->warn_size == 0 ? WARNING_SIZE *2 : s->warn_size*2;
  result->opaque = s->opaque;
  result->id = s->id;
  result->ud = s->wb_size%1024 == 0 ? s->wb_size/1024 : s->wb_size/1024 + 1;
  result->data = ((void*)0);
  return SOCKET_WARNING;
 }
 return -1;
}
