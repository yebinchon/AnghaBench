
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int evutil_socket_t ;


 int accept (int ,struct sockaddr*,int *) ;
 int makeSocketNonBlocking (int ) ;

evutil_socket_t
ccnet_net_accept (evutil_socket_t b, struct sockaddr_storage *cliaddr,
                  socklen_t *len, int nonblock)
{
    evutil_socket_t s;


    s = accept (b, (struct sockaddr *)cliaddr, len);


    if (nonblock)
        makeSocketNonBlocking(s);

    return s;
}
