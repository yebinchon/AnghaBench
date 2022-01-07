
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int sin6_len; int sin6_port; int sin6_addr; int sin6_family; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int addr ;


 int AF_INET6 ;
 int IPPROTO_TCP ;
 int PF_INET6 ;
 int SOCK_CLOEXEC ;
 int SOCK_STREAM ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 scalar_t__ getsockname (int,struct sockaddr*,int*) ;
 int in6addr_loopback ;
 unsigned int ntohs (int ) ;
 int socket (int ,int,int ) ;
 int vlc_close (int) ;

__attribute__((used)) static int server_socket(unsigned *port)
{
    int fd = socket(PF_INET6, SOCK_STREAM|SOCK_CLOEXEC, IPPROTO_TCP);
    if (fd == -1)
        return -1;

    struct sockaddr_in6 addr = {
        .sin6_family = AF_INET6,



        .sin6_addr = in6addr_loopback,
    };
    socklen_t addrlen = sizeof (addr);

    if (bind(fd, (struct sockaddr *)&addr, addrlen)
     || getsockname(fd, (struct sockaddr *)&addr, &addrlen))
    {
        vlc_close(fd);
        return -1;
    }

    *port = ntohs(addr.sin6_port);
    return fd;
}
