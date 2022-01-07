
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sock; int priority_queue_start; } ;
typedef TYPE_1__ TCP_Client_Connection ;


 int free (TYPE_1__*) ;
 int kill_sock (int ) ;
 int sodium_memzero (TYPE_1__*,int) ;
 int wipe_priority_list (int ) ;

void kill_TCP_connection(TCP_Client_Connection *TCP_connection)
{
    if (TCP_connection == ((void*)0))
        return;

    wipe_priority_list(TCP_connection->priority_queue_start);
    kill_sock(TCP_connection->sock);
    sodium_memzero(TCP_connection, sizeof(TCP_Client_Connection));
    free(TCP_connection);
}
