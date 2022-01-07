
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union sockaddr_all {int s; } ;
typedef int u ;
struct socket_server {int * buffer; } ;
struct socket_message {int ud; int * data; int id; int opaque; } ;
struct socket {int id; int opaque; int type; int fd; } ;
typedef int socklen_t ;


 scalar_t__ EMFILE ;
 scalar_t__ ENFILE ;
 int PROTOCOL_TCP ;
 int SOCKET_TYPE_PACCEPT ;
 int accept (int ,int *,int*) ;
 int close (int) ;
 scalar_t__ errno ;
 scalar_t__ getname (union sockaddr_all*,int *,int) ;
 struct socket* new_fd (struct socket_server*,int,int,int ,int ,int) ;
 int reserve_id (struct socket_server*) ;
 int socket_keepalive (int) ;
 int sp_nonblocking (int) ;
 int stat_read (struct socket_server*,struct socket*,int) ;
 int * strerror (scalar_t__) ;

__attribute__((used)) static int
report_accept(struct socket_server *ss, struct socket *s, struct socket_message *result) {
 union sockaddr_all u;
 socklen_t len = sizeof(u);
 int client_fd = accept(s->fd, &u.s, &len);
 if (client_fd < 0) {
  if (errno == EMFILE || errno == ENFILE) {
   result->opaque = s->opaque;
   result->id = s->id;
   result->ud = 0;
   result->data = strerror(errno);
   return -1;
  } else {
   return 0;
  }
 }
 int id = reserve_id(ss);
 if (id < 0) {
  close(client_fd);
  return 0;
 }
 socket_keepalive(client_fd);
 sp_nonblocking(client_fd);
 struct socket *ns = new_fd(ss, id, client_fd, PROTOCOL_TCP, s->opaque, 0);
 if (ns == ((void*)0)) {
  close(client_fd);
  return 0;
 }

 stat_read(ss,s,1);

 ns->type = SOCKET_TYPE_PACCEPT;
 result->opaque = s->opaque;
 result->id = s->id;
 result->ud = id;
 result->data = ((void*)0);

 if (getname(&u, ss->buffer, sizeof(ss->buffer))) {
  result->data = ss->buffer;
 }

 return 1;
}
