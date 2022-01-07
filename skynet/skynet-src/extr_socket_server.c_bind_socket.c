
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_server {int dummy; } ;
struct socket_message {int id; char* data; scalar_t__ ud; int opaque; } ;
struct socket {int type; } ;
struct request_bind {int id; int fd; int opaque; } ;


 int PROTOCOL_TCP ;
 int SOCKET_ERR ;
 int SOCKET_OPEN ;
 int SOCKET_TYPE_BIND ;
 struct socket* new_fd (struct socket_server*,int,int ,int ,int ,int) ;
 int sp_nonblocking (int ) ;

__attribute__((used)) static int
bind_socket(struct socket_server *ss, struct request_bind *request, struct socket_message *result) {
 int id = request->id;
 result->id = id;
 result->opaque = request->opaque;
 result->ud = 0;
 struct socket *s = new_fd(ss, id, request->fd, PROTOCOL_TCP, request->opaque, 1);
 if (s == ((void*)0)) {
  result->data = "reach skynet socket number limit";
  return SOCKET_ERR;
 }
 sp_nonblocking(request->fd);
 s->type = SOCKET_TYPE_BIND;
 result->data = "binding";
 return SOCKET_OPEN;
}
