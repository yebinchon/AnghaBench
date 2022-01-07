
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket_server {struct socket* slot; } ;
struct socket_sendbuffer {int id; } ;
struct socket {int id; scalar_t__ type; } ;
struct TYPE_3__ {int id; int sz; int buffer; } ;
struct TYPE_4__ {TYPE_1__ send; } ;
struct request_package {TYPE_2__ u; } ;


 size_t HASH_ID (int) ;
 scalar_t__ SOCKET_TYPE_INVALID ;
 int clone_buffer (struct socket_sendbuffer*,int *) ;
 int free_buffer (struct socket_server*,struct socket_sendbuffer*) ;
 int inc_sending_ref (struct socket*,int) ;
 int send_request (struct socket_server*,struct request_package*,char,int) ;

int
socket_server_send_lowpriority(struct socket_server *ss, struct socket_sendbuffer *buf) {
 int id = buf->id;

 struct socket * s = &ss->slot[HASH_ID(id)];
 if (s->id != id || s->type == SOCKET_TYPE_INVALID) {
  free_buffer(ss, buf);
  return -1;
 }

 inc_sending_ref(s, id);

 struct request_package request;
 request.u.send.id = id;
 request.u.send.buffer = clone_buffer(buf, &request.u.send.sz);

 send_request(ss, &request, 'P', sizeof(request.u.send));
 return 0;
}
