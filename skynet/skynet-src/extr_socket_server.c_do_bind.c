
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct addrinfo {int ai_family; int ai_protocol; int ai_addrlen; scalar_t__ ai_addr; int ai_socktype; } ;
typedef int ai_hints ;


 int AF_UNSPEC ;
 int IPPROTO_TCP ;
 int IPPROTO_UDP ;
 int SOCK_DGRAM ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_REUSEADDR ;
 int assert (int) ;
 int bind (int,struct sockaddr*,int ) ;
 int close (int) ;
 int freeaddrinfo (struct addrinfo*) ;
 int getaddrinfo (char const*,char*,struct addrinfo*,struct addrinfo**) ;
 int memset (struct addrinfo*,int ,int) ;
 int setsockopt (int,int ,int ,void*,int) ;
 int socket (int,int ,int ) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static int
do_bind(const char *host, int port, int protocol, int *family) {
 int fd;
 int status;
 int reuse = 1;
 struct addrinfo ai_hints;
 struct addrinfo *ai_list = ((void*)0);
 char portstr[16];
 if (host == ((void*)0) || host[0] == 0) {
  host = "0.0.0.0";
 }
 sprintf(portstr, "%d", port);
 memset( &ai_hints, 0, sizeof( ai_hints ) );
 ai_hints.ai_family = AF_UNSPEC;
 if (protocol == IPPROTO_TCP) {
  ai_hints.ai_socktype = SOCK_STREAM;
 } else {
  assert(protocol == IPPROTO_UDP);
  ai_hints.ai_socktype = SOCK_DGRAM;
 }
 ai_hints.ai_protocol = protocol;

 status = getaddrinfo( host, portstr, &ai_hints, &ai_list );
 if ( status != 0 ) {
  return -1;
 }
 *family = ai_list->ai_family;
 fd = socket(*family, ai_list->ai_socktype, 0);
 if (fd < 0) {
  goto _failed_fd;
 }
 if (setsockopt(fd, SOL_SOCKET, SO_REUSEADDR, (void *)&reuse, sizeof(int))==-1) {
  goto _failed;
 }
 status = bind(fd, (struct sockaddr *)ai_list->ai_addr, ai_list->ai_addrlen);
 if (status != 0)
  goto _failed;

 freeaddrinfo( ai_list );
 return fd;
_failed:
 close(fd);
_failed_fd:
 freeaddrinfo( ai_list );
 return -1;
}
