
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint32_t ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int sock_t ;
typedef int addr ;
struct TYPE_4__ {size_t num_listening_socks; int * socks_listening; } ;
typedef TYPE_1__ TCP_Server ;


 int accept (int ,struct sockaddr*,unsigned int*) ;
 int accept_connection (TYPE_1__*,int ) ;

__attribute__((used)) static void do_TCP_accept_new(TCP_Server *TCP_server)
{
    uint32_t i;

    for (i = 0; i < TCP_server->num_listening_socks; ++i) {
        struct sockaddr_storage addr;
        unsigned int addrlen = sizeof(addr);
        sock_t sock;

        do {
            sock = accept(TCP_server->socks_listening[i], (struct sockaddr *)&addr, &addrlen);
        } while (accept_connection(TCP_server, sock) != -1);
    }
}
