
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_5__ {size_t num_listening_socks; struct TYPE_5__* accepted_connection_array; struct TYPE_5__* socks_listening; int efd; int accepted_key_list; scalar_t__ onion; } ;
typedef TYPE_1__ TCP_Server ;


 int bs_list_free (int *) ;
 int close (int ) ;
 int free (TYPE_1__*) ;
 int kill_sock (TYPE_1__) ;
 int set_callback_handle_recv_1 (scalar_t__,int *,int *) ;

void kill_TCP_server(TCP_Server *TCP_server)
{
    uint32_t i;

    for (i = 0; i < TCP_server->num_listening_socks; ++i) {
        kill_sock(TCP_server->socks_listening[i]);
    }

    if (TCP_server->onion) {
        set_callback_handle_recv_1(TCP_server->onion, ((void*)0), ((void*)0));
    }

    bs_list_free(&TCP_server->accepted_key_list);





    free(TCP_server->socks_listening);
    free(TCP_server->accepted_connection_array);
    free(TCP_server);
}
