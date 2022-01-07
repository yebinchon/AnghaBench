
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket_server {char* buffer; TYPE_1__* slot; int event_fd; } ;
struct socket_message {int id; char* data; scalar_t__ ud; int opaque; } ;
struct socket {int fd; int type; } ;
struct sockaddr_in6 {int sin6_addr; } ;
struct sockaddr_in {int sin_addr; } ;
struct sockaddr {int dummy; } ;
struct request_open {int id; int port; int opaque; int host; } ;
struct addrinfo {scalar_t__ ai_family; struct sockaddr* ai_addr; int ai_addrlen; int ai_protocol; int ai_socktype; struct addrinfo* ai_next; } ;
typedef int ai_hints ;
struct TYPE_2__ {int type; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_UNSPEC ;
 scalar_t__ EINPROGRESS ;
 size_t HASH_ID (int) ;
 int IPPROTO_TCP ;
 int PROTOCOL_TCP ;
 int SOCKET_ERR ;
 int SOCKET_OPEN ;
 int SOCKET_TYPE_CONNECTED ;
 int SOCKET_TYPE_CONNECTING ;
 int SOCKET_TYPE_INVALID ;
 int SOCK_STREAM ;
 int close (int) ;
 int connect (int,struct sockaddr*,int ) ;
 scalar_t__ errno ;
 int freeaddrinfo (struct addrinfo*) ;
 scalar_t__ gai_strerror (int) ;
 int getaddrinfo (int ,char*,struct addrinfo*,struct addrinfo**) ;
 scalar_t__ inet_ntop (scalar_t__,void*,char*,int) ;
 int memset (struct addrinfo*,int ,int) ;
 struct socket* new_fd (struct socket_server*,int,int,int ,int ,int) ;
 int socket (scalar_t__,int ,int ) ;
 int socket_keepalive (int) ;
 int sp_nonblocking (int) ;
 int sp_write (int ,int ,struct socket*,int) ;
 int sprintf (char*,char*,int) ;
 char* strerror (scalar_t__) ;

__attribute__((used)) static int
open_socket(struct socket_server *ss, struct request_open * request, struct socket_message *result) {
 int id = request->id;
 result->opaque = request->opaque;
 result->id = id;
 result->ud = 0;
 result->data = ((void*)0);
 struct socket *ns;
 int status;
 struct addrinfo ai_hints;
 struct addrinfo *ai_list = ((void*)0);
 struct addrinfo *ai_ptr = ((void*)0);
 char port[16];
 sprintf(port, "%d", request->port);
 memset(&ai_hints, 0, sizeof( ai_hints ) );
 ai_hints.ai_family = AF_UNSPEC;
 ai_hints.ai_socktype = SOCK_STREAM;
 ai_hints.ai_protocol = IPPROTO_TCP;

 status = getaddrinfo( request->host, port, &ai_hints, &ai_list );
 if ( status != 0 ) {
  result->data = (void *)gai_strerror(status);
  goto _failed;
 }
 int sock= -1;
 for (ai_ptr = ai_list; ai_ptr != ((void*)0); ai_ptr = ai_ptr->ai_next ) {
  sock = socket( ai_ptr->ai_family, ai_ptr->ai_socktype, ai_ptr->ai_protocol );
  if ( sock < 0 ) {
   continue;
  }
  socket_keepalive(sock);
  sp_nonblocking(sock);
  status = connect( sock, ai_ptr->ai_addr, ai_ptr->ai_addrlen);
  if ( status != 0 && errno != EINPROGRESS) {
   close(sock);
   sock = -1;
   continue;
  }
  break;
 }

 if (sock < 0) {
  result->data = strerror(errno);
  goto _failed;
 }

 ns = new_fd(ss, id, sock, PROTOCOL_TCP, request->opaque, 1);
 if (ns == ((void*)0)) {
  close(sock);
  result->data = "reach skynet socket number limit";
  goto _failed;
 }

 if(status == 0) {
  ns->type = SOCKET_TYPE_CONNECTED;
  struct sockaddr * addr = ai_ptr->ai_addr;
  void * sin_addr = (ai_ptr->ai_family == AF_INET) ? (void*)&((struct sockaddr_in *)addr)->sin_addr : (void*)&((struct sockaddr_in6 *)addr)->sin6_addr;
  if (inet_ntop(ai_ptr->ai_family, sin_addr, ss->buffer, sizeof(ss->buffer))) {
   result->data = ss->buffer;
  }
  freeaddrinfo( ai_list );
  return SOCKET_OPEN;
 } else {
  ns->type = SOCKET_TYPE_CONNECTING;
  sp_write(ss->event_fd, ns->fd, ns, 1);
 }

 freeaddrinfo( ai_list );
 return -1;
_failed:
 freeaddrinfo( ai_list );
 ss->slot[HASH_ID(id)].type = SOCKET_TYPE_INVALID;
 return SOCKET_ERR;
}
