
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket_server {int dummy; } ;
struct socket_message {char* data; int ud; int id; int opaque; } ;
struct socket_lock {int dummy; } ;
struct TYPE_2__ {int size; } ;
struct socket {scalar_t__ type; int id; int opaque; TYPE_1__ p; int fd; } ;




 int FREE (char*) ;
 char* MALLOC (int) ;
 int MIN_READ_BUFFER ;
 int SOCKET_CLOSE ;
 int SOCKET_DATA ;
 int SOCKET_ERR ;
 scalar_t__ SOCKET_TYPE_HALFCLOSE ;
 int errno ;
 int force_close (struct socket_server*,struct socket*,struct socket_lock*,struct socket_message*) ;
 int fprintf (int ,char*) ;
 scalar_t__ read (int ,char*,int) ;
 int stat_read (struct socket_server*,struct socket*,int) ;
 int stderr ;
 char* strerror (int) ;

__attribute__((used)) static int
forward_message_tcp(struct socket_server *ss, struct socket *s, struct socket_lock *l, struct socket_message * result) {
 int sz = s->p.size;
 char * buffer = MALLOC(sz);
 int n = (int)read(s->fd, buffer, sz);
 if (n<0) {
  FREE(buffer);
  switch(errno) {
  case 128:
   break;
  case 129:
   fprintf(stderr, "socket-server: EAGAIN capture.\n");
   break;
  default:

   force_close(ss, s, l, result);
   result->data = strerror(errno);
   return SOCKET_ERR;
  }
  return -1;
 }
 if (n==0) {
  FREE(buffer);
  force_close(ss, s, l, result);
  return SOCKET_CLOSE;
 }

 if (s->type == SOCKET_TYPE_HALFCLOSE) {

  FREE(buffer);
  return -1;
 }

 stat_read(ss,s,n);

 if (n == sz) {
  s->p.size *= 2;
 } else if (sz > MIN_READ_BUFFER && n*2 < sz) {
  s->p.size /= 2;
 }

 result->opaque = s->opaque;
 result->id = s->id;
 result->ud = n;
 result->data = buffer;
 return SOCKET_DATA;
}
