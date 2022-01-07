
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_server {struct socket* slot; } ;
struct socket_message {int id; int opaque; int * data; scalar_t__ ud; } ;
struct socket_lock {int dummy; } ;
struct socket {scalar_t__ type; int id; } ;
struct request_close {int id; int opaque; scalar_t__ shutdown; } ;


 size_t HASH_ID (int) ;
 int SOCKET_CLOSE ;
 scalar_t__ SOCKET_TYPE_HALFCLOSE ;
 scalar_t__ SOCKET_TYPE_INVALID ;
 int SOCKET_WARNING ;
 int force_close (struct socket_server*,struct socket*,struct socket_lock*,struct socket_message*) ;
 scalar_t__ nomore_sending_data (struct socket*) ;
 int send_buffer (struct socket_server*,struct socket*,struct socket_lock*,struct socket_message*) ;
 int socket_lock_init (struct socket*,struct socket_lock*) ;

__attribute__((used)) static int
close_socket(struct socket_server *ss, struct request_close *request, struct socket_message *result) {
 int id = request->id;
 struct socket * s = &ss->slot[HASH_ID(id)];
 if (s->type == SOCKET_TYPE_INVALID || s->id != id) {
  result->id = id;
  result->opaque = request->opaque;
  result->ud = 0;
  result->data = ((void*)0);
  return SOCKET_CLOSE;
 }
 struct socket_lock l;
 socket_lock_init(s, &l);
 if (!nomore_sending_data(s)) {
  int type = send_buffer(ss,s,&l,result);

  if (type != -1 && type != SOCKET_WARNING)
   return type;
 }
 if (request->shutdown || nomore_sending_data(s)) {
  force_close(ss,s,&l,result);
  result->id = id;
  result->opaque = request->opaque;
  return SOCKET_CLOSE;
 }
 s->type = SOCKET_TYPE_HALFCLOSE;

 return -1;
}
