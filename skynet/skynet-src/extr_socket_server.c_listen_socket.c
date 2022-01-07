
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket_server {TYPE_1__* slot; } ;
struct socket_message {int id; char* data; scalar_t__ ud; int opaque; } ;
struct socket {int type; } ;
struct request_listen {int id; int fd; int opaque; } ;
struct TYPE_2__ {int type; } ;


 size_t HASH_ID (int) ;
 int PROTOCOL_TCP ;
 int SOCKET_ERR ;
 int SOCKET_TYPE_INVALID ;
 int SOCKET_TYPE_PLISTEN ;
 int close (int) ;
 struct socket* new_fd (struct socket_server*,int,int,int ,int ,int) ;

__attribute__((used)) static int
listen_socket(struct socket_server *ss, struct request_listen * request, struct socket_message *result) {
 int id = request->id;
 int listen_fd = request->fd;
 struct socket *s = new_fd(ss, id, listen_fd, PROTOCOL_TCP, request->opaque, 0);
 if (s == ((void*)0)) {
  goto _failed;
 }
 s->type = SOCKET_TYPE_PLISTEN;
 return -1;
_failed:
 close(listen_fd);
 result->opaque = request->opaque;
 result->id = id;
 result->ud = 0;
 result->data = "reach skynet socket number limit";
 ss->slot[HASH_ID(id)].type = SOCKET_TYPE_INVALID;

 return SOCKET_ERR;
}
