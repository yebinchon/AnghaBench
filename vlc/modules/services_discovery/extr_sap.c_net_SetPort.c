
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint16_t ;
struct sockaddr_in6 {void* sin6_port; } ;
struct sockaddr_in {void* sin_port; } ;
struct sockaddr {int sa_family; } ;





__attribute__((used)) static void net_SetPort(struct sockaddr *addr, uint16_t port)
{
    switch (addr->sa_family)
    {

        case 128:
            ((struct sockaddr_in6 *)addr)->sin6_port = port;
        break;

        case 129:
            ((struct sockaddr_in *)addr)->sin_port = port;
        break;
    }
}
