
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int ss_family; } ;
struct sockaddr {int dummy; } ;
typedef int ss ;
typedef int socklen_t ;
typedef int evutil_socket_t ;


 scalar_t__ getsockname (int ,struct sockaddr*,int*) ;

int
sockfd_to_family(evutil_socket_t sockfd)
{
 struct sockaddr_storage ss;
 socklen_t len;

 len = sizeof(ss);
 if (getsockname(sockfd, (struct sockaddr *) &ss, &len) < 0)
  return(-1);
 return(ss.ss_family);
}
