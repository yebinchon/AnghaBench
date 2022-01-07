
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v ;
struct socket_server {struct socket* slot; } ;
struct socket {scalar_t__ type; int id; int fd; } ;
struct request_setopt {int id; int value; int what; } ;


 size_t HASH_ID (int) ;
 int IPPROTO_TCP ;
 scalar_t__ SOCKET_TYPE_INVALID ;
 int setsockopt (int ,int ,int ,int*,int) ;

__attribute__((used)) static void
setopt_socket(struct socket_server *ss, struct request_setopt *request) {
 int id = request->id;
 struct socket *s = &ss->slot[HASH_ID(id)];
 if (s->type == SOCKET_TYPE_INVALID || s->id !=id) {
  return;
 }
 int v = request->value;
 setsockopt(s->fd, IPPROTO_TCP, request->what, &v, sizeof(v));
}
