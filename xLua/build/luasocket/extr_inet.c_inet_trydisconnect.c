
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct in6_addr {int dummy; } ;
struct sockaddr_in6 {struct in6_addr sin6_addr; void* sin6_family; } ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; void* sin_family; } ;
typedef int sin6 ;
typedef int sin ;
typedef int p_timeout ;
typedef int p_socket ;
typedef int SA ;


 void* AF_UNSPEC ;
 struct in6_addr IN6ADDR_ANY_INIT ;
 int INADDR_ANY ;


 int memset (char*,int ,int) ;
 int socket_connect (int ,int *,int,int ) ;
 char const* socket_strerror (int ) ;

const char *inet_trydisconnect(p_socket ps, int family, p_timeout tm)
{
    switch (family) {
        case 129: {
            struct sockaddr_in sin;
            memset((char *) &sin, 0, sizeof(sin));
            sin.sin_family = AF_UNSPEC;
            sin.sin_addr.s_addr = INADDR_ANY;
            return socket_strerror(socket_connect(ps, (SA *) &sin,
                sizeof(sin), tm));
        }
        case 128: {
            struct sockaddr_in6 sin6;
            struct in6_addr addrany = IN6ADDR_ANY_INIT;
            memset((char *) &sin6, 0, sizeof(sin6));
            sin6.sin6_family = AF_UNSPEC;
            sin6.sin6_addr = addrany;
            return socket_strerror(socket_connect(ps, (SA *) &sin6,
                sizeof(sin6), tm));
        }
    }
    return ((void*)0);
}
