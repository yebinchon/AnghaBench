
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct sockaddr_in6 {int sin6_port; } ;
struct sockaddr_in {int sin_port; } ;
struct sockaddr {int sa_family; } ;




 int ntohs (int ) ;

uint16_t
sock_port (const struct sockaddr *sa)
{
    switch (sa->sa_family) {
    case 129: {
        struct sockaddr_in *sin = (struct sockaddr_in *) sa;
        return ntohs(sin->sin_port);
    }







    default:
        return 0;
    }
    return 0;
}
