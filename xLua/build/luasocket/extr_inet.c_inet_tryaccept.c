
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t_sockaddr_storage ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
typedef int socklen_t ;
typedef int p_timeout ;
typedef int p_socket ;
typedef int SA ;


 int PF_INET6 ;
 int socket_accept (int ,int ,int *,int*,int ) ;
 char const* socket_strerror (int ) ;

const char *inet_tryaccept(p_socket server, int family, p_socket client,
    p_timeout tm)
{
 socklen_t len;
 t_sockaddr_storage addr;
 if (family == PF_INET6) {
  len = sizeof(struct sockaddr_in6);
 } else {
  len = sizeof(struct sockaddr_in);
 }
 return socket_strerror(socket_accept(server, client, (SA *) &addr,
        &len, tm));
}
