
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int socklen_t ;
typedef int sock_t ;
typedef int ipv6only ;


 int IPPROTO_IPV6 ;
 int IPV6_V6ONLY ;
 int getsockopt (int ,int ,int ,void*,int*) ;
 scalar_t__ setsockopt (int ,int ,int ,void*,int) ;

int set_socket_dualstack(sock_t sock)
{
    int ipv6only = 0;
    socklen_t optsize = sizeof(ipv6only);
    int res = getsockopt(sock, IPPROTO_IPV6, IPV6_V6ONLY, (void *)&ipv6only, &optsize);

    if ((res == 0) && (ipv6only == 0))
        return 1;

    ipv6only = 0;
    return (setsockopt(sock, IPPROTO_IPV6, IPV6_V6ONLY, (void *)&ipv6only, sizeof(ipv6only)) == 0);
}
