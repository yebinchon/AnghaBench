
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int sin6_port; int sin6_addr; int sin6_family; } ;
struct sockaddr_in {int sin_port; int sin_addr; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct in6_addr {int dummy; } ;
typedef int stream_t ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int INET6_ADDRSTRLEN ;
 char* inet_ntoa (int ) ;
 int inet_ntop (int ,int *,char*,int) ;
 int msg_Info (int *,char*,char*,int ) ;
 int ntohs (int ) ;

__attribute__((used)) static void print_sockaddr_info(stream_t *p_access, struct sockaddr *x)
{
    if (x->sa_family == AF_INET)
    {
        struct sockaddr_in *xin = (void*)x;
        msg_Info(p_access, "Peer IP:Port %s:%d", inet_ntoa(xin->sin_addr), ntohs(xin->sin_port));
    }
    else if (x->sa_family == AF_INET6)
    {
        struct sockaddr_in6 *xin6 = (void*)x;
        char str[INET6_ADDRSTRLEN];
        inet_ntop(xin6->sin6_family, &xin6->sin6_addr, str, sizeof(struct in6_addr));
        msg_Info(p_access, "Peer IP:Port %s:%d", str, ntohs(xin6->sin6_port));
    }
}
