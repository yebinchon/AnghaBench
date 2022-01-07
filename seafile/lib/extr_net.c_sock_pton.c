
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr_in6 {void* sin6_port; void* sin6_family; int sin6_addr; } ;
struct sockaddr_in {void* sin_port; void* sin_family; int sin_addr; } ;


 void* AF_INET ;
 void* AF_INET6 ;
 int evutil_inet_pton (void*,char const*,int *) ;
 void* htons (int ) ;

int
sock_pton (const char *addr_str, uint16_t port, struct sockaddr_storage *sa)
{
    struct sockaddr_in *saddr = (struct sockaddr_in *) sa;


    struct sockaddr_in6 *saddr6 = (struct sockaddr_in6 *) sa;


    if (evutil_inet_pton (AF_INET, addr_str, &saddr->sin_addr) == 1 ) {
        saddr->sin_family = AF_INET;
        saddr->sin_port = htons (port);
        return 0;
    }

    else if (evutil_inet_pton (AF_INET6, addr_str, &saddr6->sin6_addr) == 1)
    {
        saddr6->sin6_family = AF_INET6;
        saddr6->sin6_port = htons (port);
        return 0;
    }


    return -1;
}
