
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {void* sin6_port; } ;
struct sockaddr_in {void* sin_port; } ;
struct sockaddr {int sa_family; } ;
typedef int in_port_t ;




 void* htons (int ) ;

__attribute__((used)) static void
__ngx_inet_set_port(struct sockaddr *sa, in_port_t port)
{
    struct sockaddr_in *sin;




    switch (sa->sa_family) {
    default:
        sin = (struct sockaddr_in *) sa;
        sin->sin_port = htons(port);
        break;
    }
}
